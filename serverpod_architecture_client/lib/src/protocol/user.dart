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
    required this.name,
    required this.addressId,
    required this.age,
    required this.companyId,
    this.company,
    this.orders,
  });

  factory User({
    int? id,
    required String name,
    required int addressId,
    required int age,
    required int companyId,
    _i2.Company? company,
    List<_i2.Order>? orders,
  }) = _UserImpl;

  factory User.fromJson(Map<String, dynamic> jsonSerialization) {
    return User(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      addressId: jsonSerialization['addressId'] as int,
      age: jsonSerialization['age'] as int,
      companyId: jsonSerialization['companyId'] as int,
      company: jsonSerialization['company'] == null
          ? null
          : _i2.Company.fromJson(
              (jsonSerialization['company'] as Map<String, dynamic>)),
      orders: (jsonSerialization['orders'] as List?)
          ?.map((e) => _i2.Order.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  int addressId;

  int age;

  int companyId;

  _i2.Company? company;

  List<_i2.Order>? orders;

  User copyWith({
    int? id,
    String? name,
    int? addressId,
    int? age,
    int? companyId,
    _i2.Company? company,
    List<_i2.Order>? orders,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'addressId': addressId,
      'age': age,
      'companyId': companyId,
      if (company != null) 'company': company?.toJson(),
      if (orders != null)
        'orders': orders?.toJson(valueToJson: (v) => v.toJson()),
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
    required String name,
    required int addressId,
    required int age,
    required int companyId,
    _i2.Company? company,
    List<_i2.Order>? orders,
  }) : super._(
          id: id,
          name: name,
          addressId: addressId,
          age: age,
          companyId: companyId,
          company: company,
          orders: orders,
        );

  @override
  User copyWith({
    Object? id = _Undefined,
    String? name,
    int? addressId,
    int? age,
    int? companyId,
    Object? company = _Undefined,
    Object? orders = _Undefined,
  }) {
    return User(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      addressId: addressId ?? this.addressId,
      age: age ?? this.age,
      companyId: companyId ?? this.companyId,
      company: company is _i2.Company? ? company : this.company?.copyWith(),
      orders: orders is List<_i2.Order>? ? orders : this.orders?.clone(),
    );
  }
}
