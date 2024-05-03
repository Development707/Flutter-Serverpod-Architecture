/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'company.dart' as _i2;
import 'custom_exception.dart' as _i3;
import 'employee.dart' as _i4;
import 'error_type.dart' as _i5;
import 'example.dart' as _i6;
import 'protocol.dart' as _i7;
import 'package:serverpod_architecture_client/src/protocol/company.dart' as _i8;
export 'company.dart';
export 'custom_exception.dart';
export 'employee.dart';
export 'error_type.dart';
export 'example.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Company) {
      return _i2.Company.fromJson(data, this) as T;
    }
    if (t == _i3.CustomException) {
      return _i3.CustomException.fromJson(data, this) as T;
    }
    if (t == _i4.Employee) {
      return _i4.Employee.fromJson(data, this) as T;
    }
    if (t == _i5.ErrorType) {
      return _i5.ErrorType.fromJson(data) as T;
    }
    if (t == _i6.Example) {
      return _i6.Example.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Company?>()) {
      return (data != null ? _i2.Company.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.CustomException?>()) {
      return (data != null ? _i3.CustomException.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i4.Employee?>()) {
      return (data != null ? _i4.Employee.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.ErrorType?>()) {
      return (data != null ? _i5.ErrorType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Example?>()) {
      return (data != null ? _i6.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<List<_i7.Employee>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i7.Employee>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i8.Company>) {
      return (data as List).map((e) => deserialize<_i8.Company>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Company) {
      return 'Company';
    }
    if (data is _i3.CustomException) {
      return 'CustomException';
    }
    if (data is _i4.Employee) {
      return 'Employee';
    }
    if (data is _i5.ErrorType) {
      return 'ErrorType';
    }
    if (data is _i6.Example) {
      return 'Example';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Company') {
      return deserialize<_i2.Company>(data['data']);
    }
    if (data['className'] == 'CustomException') {
      return deserialize<_i3.CustomException>(data['data']);
    }
    if (data['className'] == 'Employee') {
      return deserialize<_i4.Employee>(data['data']);
    }
    if (data['className'] == 'ErrorType') {
      return deserialize<_i5.ErrorType>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i6.Example>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
