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
  });

  factory Company({
    int? id,
    required String name,
    DateTime? foundedDate,
    List<_i2.Employee>? employees,
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
          ?.map((e) => _i2.Employee.fromJson((e as Map<String, dynamic>)))
          .toList(),
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
  List<_i2.Employee>? employees;

  Company copyWith({
    int? id,
    String? name,
    DateTime? foundedDate,
    List<_i2.Employee>? employees,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (foundedDate != null) 'foundedDate': foundedDate?.toJson(),
      if (employees != null)
        'employees': employees?.toJson(valueToJson: (v) => v.toJson()),
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
    List<_i2.Employee>? employees,
  }) : super._(
          id: id,
          name: name,
          foundedDate: foundedDate,
          employees: employees,
        );

  @override
  Company copyWith({
    Object? id = _Undefined,
    String? name,
    Object? foundedDate = _Undefined,
    Object? employees = _Undefined,
  }) {
    return Company(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      foundedDate: foundedDate is DateTime? ? foundedDate : this.foundedDate,
      employees: employees is List<_i2.Employee>?
          ? employees
          : this.employees?.clone(),
    );
  }
}
