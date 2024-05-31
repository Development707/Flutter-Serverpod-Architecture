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
import 'blocking.dart' as _i3;
import 'cat.dart' as _i4;
import 'company.dart' as _i5;
import 'course.dart' as _i6;
import 'custom_exception.dart' as _i7;
import 'enrollment.dart' as _i8;
import 'error_type.dart' as _i9;
import 'example.dart' as _i10;
import 'member.dart' as _i11;
import 'post.dart' as _i12;
import 'student.dart' as _i13;
import 'user.dart' as _i14;
import 'protocol.dart' as _i15;
import 'package:serverpod_architecture_client/src/protocol/blocking.dart'
    as _i16;
import 'package:serverpod_architecture_client/src/protocol/cat.dart' as _i17;
import 'package:serverpod_architecture_client/src/protocol/company.dart'
    as _i18;
import 'package:serverpod_architecture_client/src/protocol/post.dart' as _i19;
import 'package:serverpod_architecture_shared/serverpod_architecture_shared.dart'
    as _i20;
export 'address.dart';
export 'blocking.dart';
export 'cat.dart';
export 'company.dart';
export 'course.dart';
export 'custom_exception.dart';
export 'enrollment.dart';
export 'error_type.dart';
export 'example.dart';
export 'member.dart';
export 'post.dart';
export 'student.dart';
export 'user.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.Address) {
      return _i2.Address.fromJson(data) as T;
    }
    if (t == _i3.Blocking) {
      return _i3.Blocking.fromJson(data) as T;
    }
    if (t == _i4.Cat) {
      return _i4.Cat.fromJson(data) as T;
    }
    if (t == _i5.Company) {
      return _i5.Company.fromJson(data) as T;
    }
    if (t == _i6.Course) {
      return _i6.Course.fromJson(data) as T;
    }
    if (t == _i7.CustomException) {
      return _i7.CustomException.fromJson(data) as T;
    }
    if (t == _i8.Enrollment) {
      return _i8.Enrollment.fromJson(data) as T;
    }
    if (t == _i9.ErrorType) {
      return _i9.ErrorType.fromJson(data) as T;
    }
    if (t == _i10.Example) {
      return _i10.Example.fromJson(data) as T;
    }
    if (t == _i11.Member) {
      return _i11.Member.fromJson(data) as T;
    }
    if (t == _i12.Post) {
      return _i12.Post.fromJson(data) as T;
    }
    if (t == _i13.Student) {
      return _i13.Student.fromJson(data) as T;
    }
    if (t == _i14.User) {
      return _i14.User.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Address?>()) {
      return (data != null ? _i2.Address.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Blocking?>()) {
      return (data != null ? _i3.Blocking.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Cat?>()) {
      return (data != null ? _i4.Cat.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Company?>()) {
      return (data != null ? _i5.Company.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Course?>()) {
      return (data != null ? _i6.Course.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.CustomException?>()) {
      return (data != null ? _i7.CustomException.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Enrollment?>()) {
      return (data != null ? _i8.Enrollment.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.ErrorType?>()) {
      return (data != null ? _i9.ErrorType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.Example?>()) {
      return (data != null ? _i10.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.Member?>()) {
      return (data != null ? _i11.Member.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.Post?>()) {
      return (data != null ? _i12.Post.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.Student?>()) {
      return (data != null ? _i13.Student.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.User?>()) {
      return (data != null ? _i14.User.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i15.Cat>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i15.Cat>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i15.User>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i15.User>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i15.Enrollment>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i15.Enrollment>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i15.Blocking>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i15.Blocking>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i15.Blocking>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i15.Blocking>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i15.Enrollment>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i15.Enrollment>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i16.Blocking>) {
      return (data as List).map((e) => deserialize<_i16.Blocking>(e)).toList()
          as dynamic;
    }
    if (t == List<_i17.Cat>) {
      return (data as List).map((e) => deserialize<_i17.Cat>(e)).toList()
          as dynamic;
    }
    if (t == List<_i18.Company>) {
      return (data as List).map((e) => deserialize<_i18.Company>(e)).toList()
          as dynamic;
    }
    if (t == List<_i19.Post>) {
      return (data as List).map((e) => deserialize<_i19.Post>(e)).toList()
          as dynamic;
    }
    if (t == _i20.ClassName) {
      return _i20.ClassName.fromJson(data) as T;
    }
    if (t == _i20.FreezedCustomClass) {
      return _i20.FreezedCustomClass.fromJson(data) as T;
    }
    if (t == _i1.getType<_i20.ClassName?>()) {
      return (data != null ? _i20.ClassName.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i20.FreezedCustomClass?>()) {
      return (data != null ? _i20.FreezedCustomClass.fromJson(data) : null)
          as T;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i20.ClassName) {
      return 'ClassName';
    }
    if (data is _i20.FreezedCustomClass) {
      return 'FreezedCustomClass';
    }
    if (data is _i2.Address) {
      return 'Address';
    }
    if (data is _i3.Blocking) {
      return 'Blocking';
    }
    if (data is _i4.Cat) {
      return 'Cat';
    }
    if (data is _i5.Company) {
      return 'Company';
    }
    if (data is _i6.Course) {
      return 'Course';
    }
    if (data is _i7.CustomException) {
      return 'CustomException';
    }
    if (data is _i8.Enrollment) {
      return 'Enrollment';
    }
    if (data is _i9.ErrorType) {
      return 'ErrorType';
    }
    if (data is _i10.Example) {
      return 'Example';
    }
    if (data is _i11.Member) {
      return 'Member';
    }
    if (data is _i12.Post) {
      return 'Post';
    }
    if (data is _i13.Student) {
      return 'Student';
    }
    if (data is _i14.User) {
      return 'User';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'ClassName') {
      return deserialize<_i20.ClassName>(data['data']);
    }
    if (data['className'] == 'FreezedCustomClass') {
      return deserialize<_i20.FreezedCustomClass>(data['data']);
    }
    if (data['className'] == 'Address') {
      return deserialize<_i2.Address>(data['data']);
    }
    if (data['className'] == 'Blocking') {
      return deserialize<_i3.Blocking>(data['data']);
    }
    if (data['className'] == 'Cat') {
      return deserialize<_i4.Cat>(data['data']);
    }
    if (data['className'] == 'Company') {
      return deserialize<_i5.Company>(data['data']);
    }
    if (data['className'] == 'Course') {
      return deserialize<_i6.Course>(data['data']);
    }
    if (data['className'] == 'CustomException') {
      return deserialize<_i7.CustomException>(data['data']);
    }
    if (data['className'] == 'Enrollment') {
      return deserialize<_i8.Enrollment>(data['data']);
    }
    if (data['className'] == 'ErrorType') {
      return deserialize<_i9.ErrorType>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i10.Example>(data['data']);
    }
    if (data['className'] == 'Member') {
      return deserialize<_i11.Member>(data['data']);
    }
    if (data['className'] == 'Post') {
      return deserialize<_i12.Post>(data['data']);
    }
    if (data['className'] == 'Student') {
      return deserialize<_i13.Student>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i14.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
