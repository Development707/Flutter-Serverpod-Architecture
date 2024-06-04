import 'package:serverpod/serverpod.dart';
import 'package:serverpod_architecture_server/src/generated/protocol.dart';

class PaginationEndpoint extends Endpoint {
  /// Limit
  Future<List<Company>> limit(Session session) async {
    return Company.db.find(session, limit: 10);
  }

  /// Offset
  Future<List<Company>> offset(Session session) async {
    return Company.db.find(session, limit: 10, offset: 30);
  }

  /// Using Limit and Offset for Pagination
  Future<List<Company>> pagination(Session session, int page, int perPage) {
    return Company.db.find(
      session,
      limit: perPage,
      offset: (page - 1) * perPage,
    );
  }

  /// Using Cursor-based for Pagination
  Future<Map<String, dynamic>> paginationCursor(
    Session session, {
    int? cursor,
    int perPage = 20,
  }) async {
    final companies = await Company.db.find(
      session,
      orderBy: (c) => c.id,
      where: (c) => c.id > cursor,
      limit: perPage,
    );

    return {
      'data': companies,
      'nextCursor': companies.last.id,
    };
  }
}
