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

abstract class User implements _i1.SerializableModel {
  User._({
    this.id,
    required this.addressId,
    required this.age,
    required this.companyId,
    this.company,
  });

  factory User({
    int? id,
    required int addressId,
    required int age,
    required int companyId,
    _i2.Company? company,
  }) = _UserImpl;

  factory User.fromJson(Map<String, dynamic> jsonSerialization) {
    return User(
      id: jsonSerialization['id'] as int?,
      addressId: jsonSerialization['addressId'] as int,
      age: jsonSerialization['age'] as int,
      companyId: jsonSerialization['companyId'] as int,
      company: jsonSerialization['company'] == null
          ? null
          : _i2.Company.fromJson(
              (jsonSerialization['company'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int addressId;

  int age;

  int companyId;

  _i2.Company? company;

  User copyWith({
    int? id,
    int? addressId,
    int? age,
    int? companyId,
    _i2.Company? company,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'addressId': addressId,
      'age': age,
      'companyId': companyId,
      if (company != null) 'company': company?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserImpl extends User {
  _UserImpl({
    int? id,
    required int addressId,
    required int age,
    required int companyId,
    _i2.Company? company,
  }) : super._(
          id: id,
          addressId: addressId,
          age: age,
          companyId: companyId,
          company: company,
        );

  @override
  User copyWith({
    Object? id = _Undefined,
    int? addressId,
    int? age,
    int? companyId,
    Object? company = _Undefined,
  }) {
    return User(
      id: id is int? ? id : this.id,
      addressId: addressId ?? this.addressId,
      age: age ?? this.age,
      companyId: companyId ?? this.companyId,
      company: company is _i2.Company? ? company : this.company?.copyWith(),
    );
  }
}
