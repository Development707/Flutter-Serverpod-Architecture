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

abstract class Order implements _i1.SerializableModel {
  Order._({
    this.id,
    required this.name,
    required this.price,
    required this.itemType,
    required this.userId,
    this.user,
    required this.companyId,
    this.company,
  });

  factory Order({
    int? id,
    required String name,
    required double price,
    required String itemType,
    required int userId,
    _i2.User? user,
    required int companyId,
    _i2.Company? company,
  }) = _OrderImpl;

  factory Order.fromJson(Map<String, dynamic> jsonSerialization) {
    return Order(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      price: (jsonSerialization['price'] as num).toDouble(),
      itemType: jsonSerialization['itemType'] as String,
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
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

  double price;

  String itemType;

  int userId;

  _i2.User? user;

  int companyId;

  _i2.Company? company;

  Order copyWith({
    int? id,
    String? name,
    double? price,
    String? itemType,
    int? userId,
    _i2.User? user,
    int? companyId,
    _i2.Company? company,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'price': price,
      'itemType': itemType,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
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

class _OrderImpl extends Order {
  _OrderImpl({
    int? id,
    required String name,
    required double price,
    required String itemType,
    required int userId,
    _i2.User? user,
    required int companyId,
    _i2.Company? company,
  }) : super._(
          id: id,
          name: name,
          price: price,
          itemType: itemType,
          userId: userId,
          user: user,
          companyId: companyId,
          company: company,
        );

  @override
  Order copyWith({
    Object? id = _Undefined,
    String? name,
    double? price,
    String? itemType,
    int? userId,
    Object? user = _Undefined,
    int? companyId,
    Object? company = _Undefined,
  }) {
    return Order(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      itemType: itemType ?? this.itemType,
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
      companyId: companyId ?? this.companyId,
      company: company is _i2.Company? ? company : this.company?.copyWith(),
    );
  }
}
