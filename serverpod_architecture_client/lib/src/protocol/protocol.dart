/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'address.dart' as _i2;
import 'company.dart' as _i3;
import 'course.dart' as _i4;
import 'custom_exception.dart' as _i5;
import 'employee.dart' as _i6;
import 'enrollment.dart' as _i7;
import 'error_type.dart' as _i8;
import 'example.dart' as _i9;
import 'student.dart' as _i10;
import 'user.dart' as _i11;
import 'protocol.dart' as _i12;
import 'package:serverpod_architecture_client/src/protocol/company.dart'
    as _i13;
import 'package:serverpod_architecture_shared/serverpod_architecture_shared.dart'
    as _i14;
export 'address.dart';
export 'company.dart';
export 'course.dart';
export 'custom_exception.dart';
export 'employee.dart';
export 'enrollment.dart';
export 'error_type.dart';
export 'example.dart';
export 'student.dart';
export 'user.dart';
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
    if (t == _i2.Address) {
      return _i2.Address.fromJson(data, this) as T;
    }
    if (t == _i3.Company) {
      return _i3.Company.fromJson(data, this) as T;
    }
    if (t == _i4.Course) {
      return _i4.Course.fromJson(data, this) as T;
    }
    if (t == _i5.CustomException) {
      return _i5.CustomException.fromJson(data, this) as T;
    }
    if (t == _i6.Employee) {
      return _i6.Employee.fromJson(data, this) as T;
    }
    if (t == _i7.Enrollment) {
      return _i7.Enrollment.fromJson(data, this) as T;
    }
    if (t == _i8.ErrorType) {
      return _i8.ErrorType.fromJson(data) as T;
    }
    if (t == _i9.Example) {
      return _i9.Example.fromJson(data, this) as T;
    }
    if (t == _i10.Student) {
      return _i10.Student.fromJson(data, this) as T;
    }
    if (t == _i11.User) {
      return _i11.User.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Address?>()) {
      return (data != null ? _i2.Address.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.Company?>()) {
      return (data != null ? _i3.Company.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Course?>()) {
      return (data != null ? _i4.Course.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.CustomException?>()) {
      return (data != null ? _i5.CustomException.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i6.Employee?>()) {
      return (data != null ? _i6.Employee.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.Enrollment?>()) {
      return (data != null ? _i7.Enrollment.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.ErrorType?>()) {
      return (data != null ? _i8.ErrorType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.Example?>()) {
      return (data != null ? _i9.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i10.Student?>()) {
      return (data != null ? _i10.Student.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i11.User?>()) {
      return (data != null ? _i11.User.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<List<_i12.Employee>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i12.Employee>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i12.Enrollment>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i12.Enrollment>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i12.Enrollment>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i12.Enrollment>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i13.Company>) {
      return (data as List).map((e) => deserialize<_i13.Company>(e)).toList()
          as dynamic;
    }
    if (t == _i14.ClassName) {
      return _i14.ClassName.fromJson(data, this) as T;
    }
    if (t == _i14.FreezedCustomClass) {
      return _i14.FreezedCustomClass.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i14.ClassName?>()) {
      return (data != null ? _i14.ClassName.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i14.FreezedCustomClass?>()) {
      return (data != null
          ? _i14.FreezedCustomClass.fromJson(data, this)
          : null) as T;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i14.ClassName) {
      return 'ClassName';
    }
    if (data is _i14.FreezedCustomClass) {
      return 'FreezedCustomClass';
    }
    if (data is _i2.Address) {
      return 'Address';
    }
    if (data is _i3.Company) {
      return 'Company';
    }
    if (data is _i4.Course) {
      return 'Course';
    }
    if (data is _i5.CustomException) {
      return 'CustomException';
    }
    if (data is _i6.Employee) {
      return 'Employee';
    }
    if (data is _i7.Enrollment) {
      return 'Enrollment';
    }
    if (data is _i8.ErrorType) {
      return 'ErrorType';
    }
    if (data is _i9.Example) {
      return 'Example';
    }
    if (data is _i10.Student) {
      return 'Student';
    }
    if (data is _i11.User) {
      return 'User';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'ClassName') {
      return deserialize<_i14.ClassName>(data['data']);
    }
    if (data['className'] == 'FreezedCustomClass') {
      return deserialize<_i14.FreezedCustomClass>(data['data']);
    }
    if (data['className'] == 'Address') {
      return deserialize<_i2.Address>(data['data']);
    }
    if (data['className'] == 'Company') {
      return deserialize<_i3.Company>(data['data']);
    }
    if (data['className'] == 'Course') {
      return deserialize<_i4.Course>(data['data']);
    }
    if (data['className'] == 'CustomException') {
      return deserialize<_i5.CustomException>(data['data']);
    }
    if (data['className'] == 'Employee') {
      return deserialize<_i6.Employee>(data['data']);
    }
    if (data['className'] == 'Enrollment') {
      return deserialize<_i7.Enrollment>(data['data']);
    }
    if (data['className'] == 'ErrorType') {
      return deserialize<_i8.ErrorType>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i9.Example>(data['data']);
    }
    if (data['className'] == 'Student') {
      return deserialize<_i10.Student>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i11.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
