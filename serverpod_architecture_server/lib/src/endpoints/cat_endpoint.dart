import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

/// CRUD endpoint for handling all operations on `Cat` objects.
class CatEndpoint extends Endpoint {
  /// Retrieves a list of [Cat] objects from the database using the provided [session].
  ///
  /// Parameters:
  /// - [session]: The [Session] object used to access the database.
  ///
  /// Returns:
  /// - A [Future] that resolves to a list of [Cat] objects.
  Future<List<Cat>> getCats(Session session) async {
    return await Cat.db.find(session);
  }

  /// Retrieves a single [Cat] object from the database using the provided [session] and [id].
  Future<Cat?> getCat(Session session, int id) async {
    return await Cat.db.findById(session, id);
  }

  /// Creates a new [Cat] object in the database using the provided [session] and [cat].
  ///
  /// Parameters:
  /// - [session]: The [Session] object used to access the database.
  /// - [cat]: The [Cat] object to be inserted into the database.
  ///
  /// Returns:
  /// - A [Future] that resolves to the created [Cat] object.
  Future<Cat> createCat(Session session, Cat cat) async {
    return await Cat.db.insertRow(session, cat);
  }

  /// Updates a [Cat] object in the database using the provided [session] and [cat].
  ///
  /// Parameters:
  /// - [session]: The [Session] object used to access the database.
  /// - [cat]: The [Cat] object to be updated in the database.
  ///
  /// Returns:
  /// - A [Future] that resolves to the updated [Cat] object.
  Future<Cat> updateCat(Session session, Cat cat) async {
    return await Cat.db.updateRow(session, cat);
  }

  /// Deletes a [Cat] object from the database using the provided [session] and [cat].
  ///
  /// Parameters:
  /// - [session]: The [Session] object used to access the database.
  /// - [cat]: The [Cat] object to be deleted from the database.
  ///
  /// Returns:
  /// - A [Future] that resolves to `void`.
  Future<void> deleteCat(Session session, Cat cat) async {
    await Cat.db.deleteRow(session, cat);
  }
}
