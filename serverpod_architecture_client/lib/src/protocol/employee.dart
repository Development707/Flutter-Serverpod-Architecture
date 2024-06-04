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

abstract class Employee implements _i1.SerializableModel {
  Employee._({
    this.id,
    required this.name,
    this.email,
    this.addressId,
    this.address,
    required this.companyId,
    this.company,
  });

  factory Employee({
    int? id,
    required String name,
    String? email,
    int? addressId,
    _i2.Address? address,
    required int companyId,
    _i2.Company? company,
  }) = _EmployeeImpl;

  factory Employee.fromJson(Map<String, dynamic> jsonSerialization) {
    return Employee(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      email: jsonSerialization['email'] as String?,
      addressId: jsonSerialization['addressId'] as int?,
      address: jsonSerialization['address'] == null
          ? null
          : _i2.Address.fromJson(
              (jsonSerialization['address'] as Map<String, dynamic>)),
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

  String name;

  String? email;

  int? addressId;

  _i2.Address? address;

  int companyId;

  _i2.Company? company;

  Employee copyWith({
    int? id,
    String? name,
    String? email,
    int? addressId,
    _i2.Address? address,
    int? companyId,
    _i2.Company? company,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (email != null) 'email': email,
      if (addressId != null) 'addressId': addressId,
      if (address != null) 'address': address?.toJson(),
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

class _EmployeeImpl extends Employee {
  _EmployeeImpl({
    int? id,
    required String name,
    String? email,
    int? addressId,
    _i2.Address? address,
    required int companyId,
    _i2.Company? company,
  }) : super._(
          id: id,
          name: name,
          email: email,
          addressId: addressId,
          address: address,
          companyId: companyId,
          company: company,
        );

  @override
  Employee copyWith({
    Object? id = _Undefined,
    String? name,
    Object? email = _Undefined,
    Object? addressId = _Undefined,
    Object? address = _Undefined,
    int? companyId,
    Object? company = _Undefined,
  }) {
    return Employee(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      email: email is String? ? email : this.email,
      addressId: addressId is int? ? addressId : this.addressId,
      address: address is _i2.Address? ? address : this.address?.copyWith(),
      companyId: companyId ?? this.companyId,
      company: company is _i2.Company? ? company : this.company?.copyWith(),
    );
  }
}
