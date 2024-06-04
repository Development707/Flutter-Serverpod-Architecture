import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class UserEndpoint extends Endpoint {
  /// Retrieves a list of all users in the database.
  Future<List<User>> find(Session session) {
    return User.db.find(session);
  }

  /// Retrieves a list of all users in the database that have the given name.
  Future<List<User>> equal(Session session, String value) {
    return User.db.find(session, where: (u) => u.name.equals(value));
  }

  /// Retrieves a list of all users in the database that do not have the given name.
  Future<List<User>> notEqual(Session session, String value) {
    return User.db.find(session, where: (u) => u.name.notEquals(value));
  }

  /// Retrieves a list of all users in the database that have the given age.
  Future<List<User>> operators(Session session, int value) {
    return User.db.find(session, where: (u) => u.age > value);
  }

  /// Retrieves a list of all users in the database that
  Future<List<User>> between(Session session, int min, int max) {
    return User.db.find(session, where: (u) => u.age.between(min, max));
  }

  /// Retrieves a list of all users in the database that do not have the given age.
  Future<List<User>> notBetween(Session session, int min, int max) {
    return User.db.find(session, where: (u) => u.age.notBetween(min, max));
  }

  /// Retrieves a list of all users in the database that have the given name.
  Future<List<User>> inSet(Session session, Set<String> values) {
    return User.db.find(session, where: (u) => u.name.inSet(values));
  }

  /// Retrieves a list of all users in the database that do not have the given name.
  Future<List<User>> notInSet(Session session, Set<String> values) {
    return User.db.find(session, where: (u) => u.name.notInSet(values));
  }

  /// Retrieves a list of all users in the database that have the given name.
  Future<List<User>> like(Session session, String value) {
    return User.db.find(session, where: (u) => u.name.like(value));
  }

  /// Retrieves a list of all users in the database that do not have the given name.
  Future<List<User>> notLike(Session session, String value) {
    return User.db.find(session, where: (u) => u.name.notLike(value));
  }

  /// Retrieves a list of all users in the database that have the given name.
  Future<List<User>> iLike(Session session, String value) {
    return User.db.find(session, where: (u) => u.name.ilike(value));
  }

  /// Retrieves a list of all users in the database that do not have the given name.
  Future<List<User>> notILike(Session session, String value) {
    return User.db.find(session, where: (u) => u.name.notIlike(value));
  }

  /// Retrieves a list of all users in the database that have the given name.
  ///
  /// * The `&` operator is used to chain two statements together with an `and` operation.
  /// * The `|` operator is used to chain two statements together with an `or` operation.
  Future<List<User>> logicalOperators(Session session, String value) {
    return User.db.find(
      session,
      where: (u) => (u.name.equals('Alice') & (u.age > 25)),
    );
  }

  /// One-to-one relationships
  Future<List<User>> oneToOne(Session session, int value) {
    return User.db.find(session, where: (u) => u.addressId.equals(value));
  }

  /// One-to-many relationships
  Future<List<User>> oneToMany(Session session, int id) {
    return User.db.find(session, where: (u) => u.orders.count() > 3);
  }

  /// None relationships
  Future<List<User>> none(Session session, int id) {
    return User.db.find(
      session,
      where: (u) => u.orders.none(
        (o) => o.itemType.equals('book'),
      ),
    );
  }

  /// Any relationships
  Future<List<User>> any(Session session, int id) {
    return User.db.find(
      session,
      where: (u) => u.orders.any(
        (o) => o.itemType.equals('book'),
      ),
    );
  }

  /// Every relationships
  Future<List<User>> every(Session session, int id) {
    return User.db.find(
      session,
      where: (u) => u.orders.every(
        (o) => o.itemType.equals('book'),
      ),
    );
  }
}
