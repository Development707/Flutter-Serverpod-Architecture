/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'company.dart' as _i3;
import 'custom_exception.dart' as _i4;
import 'employee.dart' as _i5;
import 'error_type.dart' as _i6;
import 'example.dart' as _i7;
import 'protocol.dart' as _i8;
import 'package:serverpod_architecture_server/src/generated/company.dart'
    as _i9;
import 'package:serverpod_architecture_shared/serverpod_architecture_shared.dart'
    as _i10;
export 'company.dart';
export 'custom_exception.dart';
export 'employee.dart';
export 'error_type.dart';
export 'example.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'company',
      dartName: 'Company',
      schema: 'public',
      module: 'serverpod_architecture',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'company_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'foundedDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'employees',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'List<protocol:Employee>?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'company_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'employee',
      dartName: 'Employee',
      schema: 'public',
      module: 'serverpod_architecture',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'employee_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'phone',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'address',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'isActive',
          columnType: _i2.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'employee_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i3.Company) {
      return _i3.Company.fromJson(data, this) as T;
    }
    if (t == _i4.CustomException) {
      return _i4.CustomException.fromJson(data, this) as T;
    }
    if (t == _i5.Employee) {
      return _i5.Employee.fromJson(data, this) as T;
    }
    if (t == _i6.ErrorType) {
      return _i6.ErrorType.fromJson(data) as T;
    }
    if (t == _i7.Example) {
      return _i7.Example.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i3.Company?>()) {
      return (data != null ? _i3.Company.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.CustomException?>()) {
      return (data != null ? _i4.CustomException.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i5.Employee?>()) {
      return (data != null ? _i5.Employee.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.ErrorType?>()) {
      return (data != null ? _i6.ErrorType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Example?>()) {
      return (data != null ? _i7.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<List<_i8.Employee>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i8.Employee>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i9.Company>) {
      return (data as List).map((e) => deserialize<_i9.Company>(e)).toList()
          as dynamic;
    }
    if (t == _i10.ClassName) {
      return _i10.ClassName.fromJson(data, this) as T;
    }
    if (t == _i10.FreezedCustomClass) {
      return _i10.FreezedCustomClass.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i10.ClassName?>()) {
      return (data != null ? _i10.ClassName.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i10.FreezedCustomClass?>()) {
      return (data != null
          ? _i10.FreezedCustomClass.fromJson(data, this)
          : null) as T;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i10.ClassName) {
      return 'ClassName';
    }
    if (data is _i10.FreezedCustomClass) {
      return 'FreezedCustomClass';
    }
    if (data is _i3.Company) {
      return 'Company';
    }
    if (data is _i4.CustomException) {
      return 'CustomException';
    }
    if (data is _i5.Employee) {
      return 'Employee';
    }
    if (data is _i6.ErrorType) {
      return 'ErrorType';
    }
    if (data is _i7.Example) {
      return 'Example';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'ClassName') {
      return deserialize<_i10.ClassName>(data['data']);
    }
    if (data['className'] == 'FreezedCustomClass') {
      return deserialize<_i10.FreezedCustomClass>(data['data']);
    }
    if (data['className'] == 'Company') {
      return deserialize<_i3.Company>(data['data']);
    }
    if (data['className'] == 'CustomException') {
      return deserialize<_i4.CustomException>(data['data']);
    }
    if (data['className'] == 'Employee') {
      return deserialize<_i5.Employee>(data['data']);
    }
    if (data['className'] == 'ErrorType') {
      return deserialize<_i6.ErrorType>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i7.Example>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i3.Company:
        return _i3.Company.t;
      case _i5.Employee:
        return _i5.Employee.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'serverpod_architecture';
}
