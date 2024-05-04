import 'package:serverpod/serverpod.dart';

import '../generated/blocking.dart';

/// CRUD endpoint for handling all operations on `Blocking` objects.
class BlockingEndpoint extends Endpoint {
  /// Retrieves all `Blocking`s.
  Future<List<Blocking>> getBlockings(Session session) {
    return Blocking.db.find(session);
  }

  /// Retrieves a `Blocking` by its id.
  Future<List<int>> getBlocking(Session session, int id) {
    return Blocking.db.deleteWhere(
      session,
      where: (t) => t.id.equals(id),
    );
  }

  /// Creates a new `Blocking`.
  Future<Blocking> createBlocking(Session session, Blocking blocking) {
    return Blocking.db.insertRow(session, blocking);
  }

  /// Updates a `Blocking`.
  Future<Blocking> updateBlocking(Session session, Blocking blocking) {
    return Blocking.db.updateRow(session, blocking);
  }

  /// Deletes a `Blocking`.
  Future<void> deleteBlocking(Session session, Blocking blocking) {
    return Blocking.db.deleteRow(session, blocking);
  }
}
