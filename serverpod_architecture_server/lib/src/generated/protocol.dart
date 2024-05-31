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
import 'address.dart' as _i3;
import 'blocking.dart' as _i4;
import 'cat.dart' as _i5;
import 'company.dart' as _i6;
import 'course.dart' as _i7;
import 'custom_exception.dart' as _i8;
import 'enrollment.dart' as _i9;
import 'error_type.dart' as _i10;
import 'example.dart' as _i11;
import 'member.dart' as _i12;
import 'post.dart' as _i13;
import 'student.dart' as _i14;
import 'user.dart' as _i15;
import 'protocol.dart' as _i16;
import 'package:serverpod_architecture_server/src/generated/blocking.dart'
    as _i17;
import 'package:serverpod_architecture_server/src/generated/cat.dart' as _i18;
import 'package:serverpod_architecture_server/src/generated/company.dart'
    as _i19;
import 'package:serverpod_architecture_server/src/generated/post.dart' as _i20;
import 'package:serverpod_architecture_shared/serverpod_architecture_shared.dart'
    as _i21;
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

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'address',
      dartName: 'Address',
      schema: 'public',
      module: 'serverpod_architecture',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'address_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'street',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'address_pkey',
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
      name: 'blocking',
      dartName: 'Blocking',
      schema: 'public',
      module: 'serverpod_architecture',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'blocking_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'blockedId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'blockedById',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'blocking_fk_0',
          columns: ['blockedId'],
          referenceTable: 'member',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'blocking_fk_1',
          columns: ['blockedById'],
          referenceTable: 'member',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'blocking_pkey',
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
        ),
        _i2.IndexDefinition(
          indexName: 'blocking_blocked_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'blockedId',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'blockedById',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'cat',
      dartName: 'Cat',
      schema: 'public',
      module: 'serverpod_architecture',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'cat_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'motherId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'cat_fk_0',
          columns: ['motherId'],
          referenceTable: 'cat',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'cat_pkey',
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
      name: 'company',
      dartName: 'Company',
      schema: 'public',
      module: 'serverpod_architecture',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
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
        ),
        _i2.IndexDefinition(
          indexName: 'company_name_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'name',
            )
          ],
          type: 'brin',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'course',
      dartName: 'Course',
      schema: 'public',
      module: 'serverpod_architecture',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'course_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'course_pkey',
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
      name: 'enrollment',
      dartName: 'Enrollment',
      schema: 'public',
      module: 'serverpod_architecture',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'enrollment_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'studentId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'courseId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'enrollment_fk_0',
          columns: ['studentId'],
          referenceTable: 'student',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'enrollment_fk_1',
          columns: ['courseId'],
          referenceTable: 'course',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'enrollment_pkey',
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
        ),
        _i2.IndexDefinition(
          indexName: 'enrollment_index_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'studentId',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'courseId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'example',
      dartName: 'Example',
      schema: 'public',
      module: 'serverpod_architecture',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'example_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'data',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'parentId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'example_fk_0',
          columns: ['parentId'],
          referenceTable: 'example',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.setNull,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'example_pkey',
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
      name: 'member',
      dartName: 'Member',
      schema: 'public',
      module: 'serverpod_architecture',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'member_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'member_pkey',
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
      name: 'post',
      dartName: 'Post',
      schema: 'public',
      module: 'serverpod_architecture',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'post_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'content',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'nextId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'post_fk_0',
          columns: ['nextId'],
          referenceTable: 'post',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'post_pkey',
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
        ),
        _i2.IndexDefinition(
          indexName: 'next_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'nextId',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'student',
      dartName: 'Student',
      schema: 'public',
      module: 'serverpod_architecture',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'student_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'student_pkey',
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
      name: 'user',
      dartName: 'User',
      schema: 'public',
      module: 'serverpod_architecture',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'user_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'addressId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'age',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'companyId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'user_fk_0',
          columns: ['addressId'],
          referenceTable: 'address',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'user_fk_1',
          columns: ['companyId'],
          referenceTable: 'company',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'user_pkey',
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
        ),
        _i2.IndexDefinition(
          indexName: 'user_address_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'addressId',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
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
    if (t == _i3.Address) {
      return _i3.Address.fromJson(data) as T;
    }
    if (t == _i4.Blocking) {
      return _i4.Blocking.fromJson(data) as T;
    }
    if (t == _i5.Cat) {
      return _i5.Cat.fromJson(data) as T;
    }
    if (t == _i6.Company) {
      return _i6.Company.fromJson(data) as T;
    }
    if (t == _i7.Course) {
      return _i7.Course.fromJson(data) as T;
    }
    if (t == _i8.CustomException) {
      return _i8.CustomException.fromJson(data) as T;
    }
    if (t == _i9.Enrollment) {
      return _i9.Enrollment.fromJson(data) as T;
    }
    if (t == _i10.ErrorType) {
      return _i10.ErrorType.fromJson(data) as T;
    }
    if (t == _i11.Example) {
      return _i11.Example.fromJson(data) as T;
    }
    if (t == _i12.Member) {
      return _i12.Member.fromJson(data) as T;
    }
    if (t == _i13.Post) {
      return _i13.Post.fromJson(data) as T;
    }
    if (t == _i14.Student) {
      return _i14.Student.fromJson(data) as T;
    }
    if (t == _i15.User) {
      return _i15.User.fromJson(data) as T;
    }
    if (t == _i1.getType<_i3.Address?>()) {
      return (data != null ? _i3.Address.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Blocking?>()) {
      return (data != null ? _i4.Blocking.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Cat?>()) {
      return (data != null ? _i5.Cat.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Company?>()) {
      return (data != null ? _i6.Company.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Course?>()) {
      return (data != null ? _i7.Course.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.CustomException?>()) {
      return (data != null ? _i8.CustomException.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.Enrollment?>()) {
      return (data != null ? _i9.Enrollment.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.ErrorType?>()) {
      return (data != null ? _i10.ErrorType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.Example?>()) {
      return (data != null ? _i11.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.Member?>()) {
      return (data != null ? _i12.Member.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.Post?>()) {
      return (data != null ? _i13.Post.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.Student?>()) {
      return (data != null ? _i14.Student.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.User?>()) {
      return (data != null ? _i15.User.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i16.Cat>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i16.Cat>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i16.User>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i16.User>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i16.Enrollment>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i16.Enrollment>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i16.Blocking>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i16.Blocking>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i16.Blocking>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i16.Blocking>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i16.Enrollment>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i16.Enrollment>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i17.Blocking>) {
      return (data as List).map((e) => deserialize<_i17.Blocking>(e)).toList()
          as dynamic;
    }
    if (t == List<_i18.Cat>) {
      return (data as List).map((e) => deserialize<_i18.Cat>(e)).toList()
          as dynamic;
    }
    if (t == List<_i19.Company>) {
      return (data as List).map((e) => deserialize<_i19.Company>(e)).toList()
          as dynamic;
    }
    if (t == List<_i20.Post>) {
      return (data as List).map((e) => deserialize<_i20.Post>(e)).toList()
          as dynamic;
    }
    if (t == _i21.ClassName) {
      return _i21.ClassName.fromJson(data) as T;
    }
    if (t == _i21.FreezedCustomClass) {
      return _i21.FreezedCustomClass.fromJson(data) as T;
    }
    if (t == _i1.getType<_i21.ClassName?>()) {
      return (data != null ? _i21.ClassName.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i21.FreezedCustomClass?>()) {
      return (data != null ? _i21.FreezedCustomClass.fromJson(data) : null)
          as T;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i21.ClassName) {
      return 'ClassName';
    }
    if (data is _i21.FreezedCustomClass) {
      return 'FreezedCustomClass';
    }
    if (data is _i3.Address) {
      return 'Address';
    }
    if (data is _i4.Blocking) {
      return 'Blocking';
    }
    if (data is _i5.Cat) {
      return 'Cat';
    }
    if (data is _i6.Company) {
      return 'Company';
    }
    if (data is _i7.Course) {
      return 'Course';
    }
    if (data is _i8.CustomException) {
      return 'CustomException';
    }
    if (data is _i9.Enrollment) {
      return 'Enrollment';
    }
    if (data is _i10.ErrorType) {
      return 'ErrorType';
    }
    if (data is _i11.Example) {
      return 'Example';
    }
    if (data is _i12.Member) {
      return 'Member';
    }
    if (data is _i13.Post) {
      return 'Post';
    }
    if (data is _i14.Student) {
      return 'Student';
    }
    if (data is _i15.User) {
      return 'User';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'ClassName') {
      return deserialize<_i21.ClassName>(data['data']);
    }
    if (data['className'] == 'FreezedCustomClass') {
      return deserialize<_i21.FreezedCustomClass>(data['data']);
    }
    if (data['className'] == 'Address') {
      return deserialize<_i3.Address>(data['data']);
    }
    if (data['className'] == 'Blocking') {
      return deserialize<_i4.Blocking>(data['data']);
    }
    if (data['className'] == 'Cat') {
      return deserialize<_i5.Cat>(data['data']);
    }
    if (data['className'] == 'Company') {
      return deserialize<_i6.Company>(data['data']);
    }
    if (data['className'] == 'Course') {
      return deserialize<_i7.Course>(data['data']);
    }
    if (data['className'] == 'CustomException') {
      return deserialize<_i8.CustomException>(data['data']);
    }
    if (data['className'] == 'Enrollment') {
      return deserialize<_i9.Enrollment>(data['data']);
    }
    if (data['className'] == 'ErrorType') {
      return deserialize<_i10.ErrorType>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i11.Example>(data['data']);
    }
    if (data['className'] == 'Member') {
      return deserialize<_i12.Member>(data['data']);
    }
    if (data['className'] == 'Post') {
      return deserialize<_i13.Post>(data['data']);
    }
    if (data['className'] == 'Student') {
      return deserialize<_i14.Student>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i15.User>(data['data']);
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
      case _i3.Address:
        return _i3.Address.t;
      case _i4.Blocking:
        return _i4.Blocking.t;
      case _i5.Cat:
        return _i5.Cat.t;
      case _i6.Company:
        return _i6.Company.t;
      case _i7.Course:
        return _i7.Course.t;
      case _i9.Enrollment:
        return _i9.Enrollment.t;
      case _i11.Example:
        return _i11.Example.t;
      case _i12.Member:
        return _i12.Member.t;
      case _i13.Post:
        return _i13.Post.t;
      case _i14.Student:
        return _i14.Student.t;
      case _i15.User:
        return _i15.User.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'serverpod_architecture';
}
