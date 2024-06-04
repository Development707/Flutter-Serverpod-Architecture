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

/// Information about a company.
abstract class Company implements _i1.SerializableModel {
  Company._({
    this.id,
    required this.name,
    this.foundedDate,
    this.employees,
    this.workers,
    this.addressId,
    this.address,
    this.orders,
    this.ceoId,
    this.ceo,
  });

  factory Company({
    int? id,
    required String name,
    DateTime? foundedDate,
    List<_i2.User>? employees,
    List<_i2.Employee>? workers,
    int? addressId,
    _i2.Address? address,
    List<_i2.Order>? orders,
    int? ceoId,
    _i2.User? ceo,
  }) = _CompanyImpl;

  factory Company.fromJson(Map<String, dynamic> jsonSerialization) {
    return Company(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      foundedDate: jsonSerialization['foundedDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['foundedDate']),
      employees: (jsonSerialization['employees'] as List?)
          ?.map((e) => _i2.User.fromJson((e as Map<String, dynamic>)))
          .toList(),
      workers: (jsonSerialization['workers'] as List?)
          ?.map((e) => _i2.Employee.fromJson((e as Map<String, dynamic>)))
          .toList(),
      addressId: jsonSerialization['addressId'] as int?,
      address: jsonSerialization['address'] == null
          ? null
          : _i2.Address.fromJson(
              (jsonSerialization['address'] as Map<String, dynamic>)),
      orders: (jsonSerialization['orders'] as List?)
          ?.map((e) => _i2.Order.fromJson((e as Map<String, dynamic>)))
          .toList(),
      ceoId: jsonSerialization['ceoId'] as int?,
      ceo: jsonSerialization['ceo'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['ceo'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// The name of the company.
  String name;

  /// The date the company was founded, if known.
  DateTime? foundedDate;

  /// A list of people currently employed at the company.
  List<_i2.User>? employees;

  List<_i2.Employee>? workers;

  int? addressId;

  _i2.Address? address;

  List<_i2.Order>? orders;

  int? ceoId;

  _i2.User? ceo;

  Company copyWith({
    int? id,
    String? name,
    DateTime? foundedDate,
    List<_i2.User>? employees,
    List<_i2.Employee>? workers,
    int? addressId,
    _i2.Address? address,
    List<_i2.Order>? orders,
    int? ceoId,
    _i2.User? ceo,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (foundedDate != null) 'foundedDate': foundedDate?.toJson(),
      if (employees != null)
        'employees': employees?.toJson(valueToJson: (v) => v.toJson()),
      if (workers != null)
        'workers': workers?.toJson(valueToJson: (v) => v.toJson()),
      if (addressId != null) 'addressId': addressId,
      if (address != null) 'address': address?.toJson(),
      if (orders != null)
        'orders': orders?.toJson(valueToJson: (v) => v.toJson()),
      if (ceoId != null) 'ceoId': ceoId,
      if (ceo != null) 'ceo': ceo?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CompanyImpl extends Company {
  _CompanyImpl({
    int? id,
    required String name,
    DateTime? foundedDate,
    List<_i2.User>? employees,
    List<_i2.Employee>? workers,
    int? addressId,
    _i2.Address? address,
    List<_i2.Order>? orders,
    int? ceoId,
    _i2.User? ceo,
  }) : super._(
          id: id,
          name: name,
          foundedDate: foundedDate,
          employees: employees,
          workers: workers,
          addressId: addressId,
          address: address,
          orders: orders,
          ceoId: ceoId,
          ceo: ceo,
        );

  @override
  Company copyWith({
    Object? id = _Undefined,
    String? name,
    Object? foundedDate = _Undefined,
    Object? employees = _Undefined,
    Object? workers = _Undefined,
    Object? addressId = _Undefined,
    Object? address = _Undefined,
    Object? orders = _Undefined,
    Object? ceoId = _Undefined,
    Object? ceo = _Undefined,
  }) {
    return Company(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      foundedDate: foundedDate is DateTime? ? foundedDate : this.foundedDate,
      employees:
          employees is List<_i2.User>? ? employees : this.employees?.clone(),
      workers: workers is List<_i2.Employee>? ? workers : this.workers?.clone(),
      addressId: addressId is int? ? addressId : this.addressId,
      address: address is _i2.Address? ? address : this.address?.copyWith(),
      orders: orders is List<_i2.Order>? ? orders : this.orders?.clone(),
      ceoId: ceoId is int? ? ceoId : this.ceoId,
      ceo: ceo is _i2.User? ? ceo : this.ceo?.copyWith(),
    );
  }
}
