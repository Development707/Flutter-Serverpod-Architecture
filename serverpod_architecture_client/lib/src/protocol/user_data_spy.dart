/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class UserData implements _i1.SerializableModel {
  UserData._({
    this.id,
    required this.name,
    required this.age,
    this.address,
  });

  factory UserData({
    int? id,
    required String name,
    required int age,
    _i2.Address? address,
  }) = _UserDataImpl;

  factory UserData.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserData(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      age: jsonSerialization['age'] as int,
      address: jsonSerialization['address'] == null
          ? null
          : _i2.Address.fromJson(
              (jsonSerialization['address'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  int age;

  _i2.Address? address;

  UserData copyWith({
    int? id,
    String? name,
    int? age,
    _i2.Address? address,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'age': age,
      if (address != null) 'address': address?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserDataImpl extends UserData {
  _UserDataImpl({
    int? id,
    required String name,
    required int age,
    _i2.Address? address,
  }) : super._(
          id: id,
          name: name,
          age: age,
          address: address,
        );

  @override
  UserData copyWith({
    Object? id = _Undefined,
    String? name,
    int? age,
    Object? address = _Undefined,
  }) {
    return UserData(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      age: age ?? this.age,
      address: address is _i2.Address? ? address : this.address?.copyWith(),
    );
  }
}
