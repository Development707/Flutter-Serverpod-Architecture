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
    required this.companyId,
    this.company,
    required this.name,
    this.email,
    this.phone,
    this.address,
  });

  factory Employee({
    int? id,
    required int companyId,
    _i2.Company? company,
    required String name,
    String? email,
    String? phone,
    String? address,
  }) = _EmployeeImpl;

  factory Employee.fromJson(Map<String, dynamic> jsonSerialization) {
    return Employee(
      id: jsonSerialization['id'] as int?,
      companyId: jsonSerialization['companyId'] as int,
      company: jsonSerialization['company'] == null
          ? null
          : _i2.Company.fromJson(
              (jsonSerialization['company'] as Map<String, dynamic>)),
      name: jsonSerialization['name'] as String,
      email: jsonSerialization['email'] as String?,
      phone: jsonSerialization['phone'] as String?,
      address: jsonSerialization['address'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int companyId;

  _i2.Company? company;

  String name;

  String? email;

  String? phone;

  String? address;

  Employee copyWith({
    int? id,
    int? companyId,
    _i2.Company? company,
    String? name,
    String? email,
    String? phone,
    String? address,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'companyId': companyId,
      if (company != null) 'company': company?.toJson(),
      'name': name,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (address != null) 'address': address,
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
    required int companyId,
    _i2.Company? company,
    required String name,
    String? email,
    String? phone,
    String? address,
  }) : super._(
          id: id,
          companyId: companyId,
          company: company,
          name: name,
          email: email,
          phone: phone,
          address: address,
        );

  @override
  Employee copyWith({
    Object? id = _Undefined,
    int? companyId,
    Object? company = _Undefined,
    String? name,
    Object? email = _Undefined,
    Object? phone = _Undefined,
    Object? address = _Undefined,
  }) {
    return Employee(
      id: id is int? ? id : this.id,
      companyId: companyId ?? this.companyId,
      company: company is _i2.Company? ? company : this.company?.copyWith(),
      name: name ?? this.name,
      email: email is String? ? email : this.email,
      phone: phone is String? ? phone : this.phone,
      address: address is String? ? address : this.address,
    );
  }
}
