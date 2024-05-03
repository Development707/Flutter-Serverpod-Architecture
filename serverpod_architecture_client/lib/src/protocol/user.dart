/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class User extends _i1.SerializableEntity {
  User._({
    this.id,
    required this.addressId,
  });

  factory User({
    int? id,
    required int addressId,
  }) = _UserImpl;

  factory User.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return User(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      addressId:
          serializationManager.deserialize<int>(jsonSerialization['addressId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int addressId;

  User copyWith({
    int? id,
    int? addressId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'addressId': addressId,
    };
  }
}

class _Undefined {}

class _UserImpl extends User {
  _UserImpl({
    int? id,
    required int addressId,
  }) : super._(
          id: id,
          addressId: addressId,
        );

  @override
  User copyWith({
    Object? id = _Undefined,
    int? addressId,
  }) {
    return User(
      id: id is int? ? id : this.id,
      addressId: addressId ?? this.addressId,
    );
  }
}
