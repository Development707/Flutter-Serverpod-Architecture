/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Employee extends _i1.SerializableEntity {
  Employee._({
    this.id,
    required this.name,
    this.email,
    this.phone,
    this.address,
  });

  factory Employee({
    int? id,
    required String name,
    String? email,
    String? phone,
    String? address,
  }) = _EmployeeImpl;

  factory Employee.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Employee(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      email:
          serializationManager.deserialize<String?>(jsonSerialization['email']),
      phone:
          serializationManager.deserialize<String?>(jsonSerialization['phone']),
      address: serializationManager
          .deserialize<String?>(jsonSerialization['address']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String? email;

  String? phone;

  String? address;

  Employee copyWith({
    int? id,
    String? name,
    String? email,
    String? phone,
    String? address,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (address != null) 'address': address,
    };
  }
}

class _Undefined {}

class _EmployeeImpl extends Employee {
  _EmployeeImpl({
    int? id,
    required String name,
    String? email,
    String? phone,
    String? address,
  }) : super._(
          id: id,
          name: name,
          email: email,
          phone: phone,
          address: address,
        );

  @override
  Employee copyWith({
    Object? id = _Undefined,
    String? name,
    Object? email = _Undefined,
    Object? phone = _Undefined,
    Object? address = _Undefined,
  }) {
    return Employee(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      email: email is String? ? email : this.email,
      phone: phone is String? ? phone : this.phone,
      address: address is String? ? address : this.address,
    );
  }
}