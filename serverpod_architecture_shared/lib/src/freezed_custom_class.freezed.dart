// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_custom_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FreezedCustomClass _$FreezedCustomClassFromJson(Map<String, dynamic> json) {
  return _FreezedCustomClass.fromJson(json);
}

/// @nodoc
mixin _$FreezedCustomClass {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FreezedCustomClassCopyWith<FreezedCustomClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreezedCustomClassCopyWith<$Res> {
  factory $FreezedCustomClassCopyWith(
          FreezedCustomClass value, $Res Function(FreezedCustomClass) then) =
      _$FreezedCustomClassCopyWithImpl<$Res, FreezedCustomClass>;
  @useResult
  $Res call({String firstName, String lastName, int age});
}

/// @nodoc
class _$FreezedCustomClassCopyWithImpl<$Res, $Val extends FreezedCustomClass>
    implements $FreezedCustomClassCopyWith<$Res> {
  _$FreezedCustomClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? age = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FreezedCustomClassImplCopyWith<$Res>
    implements $FreezedCustomClassCopyWith<$Res> {
  factory _$$FreezedCustomClassImplCopyWith(_$FreezedCustomClassImpl value,
          $Res Function(_$FreezedCustomClassImpl) then) =
      __$$FreezedCustomClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firstName, String lastName, int age});
}

/// @nodoc
class __$$FreezedCustomClassImplCopyWithImpl<$Res>
    extends _$FreezedCustomClassCopyWithImpl<$Res, _$FreezedCustomClassImpl>
    implements _$$FreezedCustomClassImplCopyWith<$Res> {
  __$$FreezedCustomClassImplCopyWithImpl(_$FreezedCustomClassImpl _value,
      $Res Function(_$FreezedCustomClassImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? age = null,
  }) {
    return _then(_$FreezedCustomClassImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FreezedCustomClassImpl implements _FreezedCustomClass {
  const _$FreezedCustomClassImpl(
      {required this.firstName, required this.lastName, required this.age});

  factory _$FreezedCustomClassImpl.fromJson(Map<String, dynamic> json) =>
      _$$FreezedCustomClassImplFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final int age;

  @override
  String toString() {
    return 'FreezedCustomClass(firstName: $firstName, lastName: $lastName, age: $age)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreezedCustomClassImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FreezedCustomClassImplCopyWith<_$FreezedCustomClassImpl> get copyWith =>
      __$$FreezedCustomClassImplCopyWithImpl<_$FreezedCustomClassImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FreezedCustomClassImplToJson(
      this,
    );
  }
}

abstract class _FreezedCustomClass implements FreezedCustomClass {
  const factory _FreezedCustomClass(
      {required final String firstName,
      required final String lastName,
      required final int age}) = _$FreezedCustomClassImpl;

  factory _FreezedCustomClass.fromJson(Map<String, dynamic> json) =
      _$FreezedCustomClassImpl.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  int get age;
  @override
  @JsonKey(ignore: true)
  _$$FreezedCustomClassImplCopyWith<_$FreezedCustomClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
