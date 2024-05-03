// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_custom_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FreezedCustomClassImpl _$$FreezedCustomClassImplFromJson(
        Map<String, dynamic> json) =>
    _$FreezedCustomClassImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      age: (json['age'] as num).toInt(),
    );

Map<String, dynamic> _$$FreezedCustomClassImplToJson(
        _$FreezedCustomClassImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'age': instance.age,
    };
