/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Example implements _i1.SerializableModel {
  Example._({
    this.id,
    required this.name,
    required this.data,
    this.parentId,
  });

  factory Example({
    int? id,
    required String name,
    required int data,
    int? parentId,
  }) = _ExampleImpl;

  factory Example.fromJson(Map<String, dynamic> jsonSerialization) {
    return Example(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      data: jsonSerialization['data'] as int,
      parentId: jsonSerialization['parentId'] as int?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  int data;

  int? parentId;

  Example copyWith({
    int? id,
    String? name,
    int? data,
    int? parentId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'data': data,
      if (parentId != null) 'parentId': parentId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ExampleImpl extends Example {
  _ExampleImpl({
    int? id,
    required String name,
    required int data,
    int? parentId,
  }) : super._(
          id: id,
          name: name,
          data: data,
          parentId: parentId,
        );

  @override
  Example copyWith({
    Object? id = _Undefined,
    String? name,
    int? data,
    Object? parentId = _Undefined,
  }) {
    return Example(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      data: data ?? this.data,
      parentId: parentId is int? ? parentId : this.parentId,
    );
  }
}
