import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class RawAccessEndpoint extends Endpoint {
  Future<List<Company>> unsafeQuery(Session session) async {
    final DatabaseResult result = await session.db.unsafeQuery(
      'SELECT * FROM company LIMIT 10',
    );

    return result
        .map((element) => Company.fromJson(element.toColumnMap()))
        .toList();
  }

  Future<int> unsafeExecute(Session session, String name) async {
    if (name.isEmpty) {
      throw ArgumentError('name');
    }

    return session.db.unsafeSimpleExecute(
      "INSERT INTO company (name) VALUES ('$name')",
    );
  }
}
