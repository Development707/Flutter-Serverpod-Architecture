import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart' hide Order;

class SortEndpoint extends Endpoint {
  /// orderBy
  Future<List<Company>> orderBy(Session session) async {
    return Company.db.find(session, orderBy: (c) => c.id);
  }

  /// orderDescending
  Future<List<Company>> orderDescending(Session session) async {
    return Company.db.find(
      session,
      orderBy: (c) => c.id,
      orderDescending: true,
    );
  }

  /// orderByList
  Future<List<Company>> orderByList(Session session) async {
    return Company.db.find(
      session,
      orderByList: (c) => [
        Order(column: c.name, orderDescending: true),
        Order(column: c.id),
      ],
    );
  }

  /// Sort on relations
  Future<List<Company>> sort(Session session) {
    return Company.db.find(
      session,
      orderBy: (c) => c.ceo.name,
    );
  }

  /// Sort count sub-field
  Future<List<Company>> sortCount(Session session) async {
    return Company.db.find(
      session,
      orderBy: (c) => c.workers.count(
        (employee) => employee.role.equals('developer'),
      ),
    );
  }
}
