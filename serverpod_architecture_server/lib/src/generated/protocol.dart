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
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i3;
import 'address.dart' as _i4;
import 'blocking.dart' as _i5;
import 'cat.dart' as _i6;
import 'company.dart' as _i7;
import 'course.dart' as _i8;
import 'custom_exception.dart' as _i9;
import 'employee.dart' as _i10;
import 'enrollment.dart' as _i11;
import 'error_type.dart' as _i12;
import 'example.dart' as _i13;
import 'member.dart' as _i14;
import 'order.dart' as _i15;
import 'post.dart' as _i16;
import 'student.dart' as _i17;
import 'user.dart' as _i18;
import 'user_data_spy.dart' as _i19;
import 'protocol.dart' as _i20;
import 'package:serverpod_architecture_server/src/generated/blocking.dart'
    as _i21;
import 'package:serverpod_architecture_server/src/generated/cat.dart' as _i22;
import 'package:serverpod_architecture_server/src/generated/company.dart'
    as _i23;
import 'package:serverpod_architecture_server/src/generated/post.dart' as _i24;
import 'package:serverpod_architecture_server/src/generated/user.dart' as _i25;
import 'package:serverpod_architecture_shared/serverpod_architecture_shared.dart'
    as _i26;
export 'address.dart';
export 'blocking.dart';
export 'cat.dart';
export 'company.dart';
export 'course.dart';
export 'custom_exception.dart';
export 'employee.dart';
export 'enrollment.dart';
export 'error_type.dart';
export 'example.dart';
export 'member.dart';
export 'order.dart';
export 'post.dart';
export 'student.dart';
export 'user.dart';
export 'user_data_spy.dart';

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
        _i2.ColumnDefinition(
          name: 'addressId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'ceoId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'company_fk_0',
          columns: ['addressId'],
          referenceTable: 'address',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'company_fk_1',
          columns: ['ceoId'],
          referenceTable: 'user',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
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
      name: 'employee',
      dartName: 'Employee',
      schema: 'public',
      module: 'serverpod_architecture',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
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
          name: 'role',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'addressId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
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
          constraintName: 'employee_fk_0',
          columns: ['addressId'],
          referenceTable: 'address',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'employee_fk_1',
          columns: ['companyId'],
          referenceTable: 'company',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        ),
      ],
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
      managed: false,
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
      name: 'order',
      dartName: 'Order',
      schema: 'public',
      module: 'serverpod_architecture',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'order_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'price',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'itemType',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
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
          constraintName: 'order_fk_0',
          columns: ['userId'],
          referenceTable: 'user',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'order_fk_1',
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
          indexName: 'order_pkey',
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
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
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
    _i2.TableDefinition(
      name: 'user_data',
      dartName: 'UserData',
      schema: 'public',
      module: 'serverpod_architecture',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'user_data_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'age',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'address',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'protocol:Address?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'user_data_pkey',
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
    ..._i3.Protocol.targetTableDefinitions,
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i4.Address) {
      return _i4.Address.fromJson(data) as T;
    }
    if (t == _i5.Blocking) {
      return _i5.Blocking.fromJson(data) as T;
    }
    if (t == _i6.Cat) {
      return _i6.Cat.fromJson(data) as T;
    }
    if (t == _i7.Company) {
      return _i7.Company.fromJson(data) as T;
    }
    if (t == _i8.Course) {
      return _i8.Course.fromJson(data) as T;
    }
    if (t == _i9.CustomException) {
      return _i9.CustomException.fromJson(data) as T;
    }
    if (t == _i10.Employee) {
      return _i10.Employee.fromJson(data) as T;
    }
    if (t == _i11.Enrollment) {
      return _i11.Enrollment.fromJson(data) as T;
    }
    if (t == _i12.ErrorType) {
      return _i12.ErrorType.fromJson(data) as T;
    }
    if (t == _i13.Example) {
      return _i13.Example.fromJson(data) as T;
    }
    if (t == _i14.Member) {
      return _i14.Member.fromJson(data) as T;
    }
    if (t == _i15.Order) {
      return _i15.Order.fromJson(data) as T;
    }
    if (t == _i16.Post) {
      return _i16.Post.fromJson(data) as T;
    }
    if (t == _i17.Student) {
      return _i17.Student.fromJson(data) as T;
    }
    if (t == _i18.User) {
      return _i18.User.fromJson(data) as T;
    }
    if (t == _i19.UserData) {
      return _i19.UserData.fromJson(data) as T;
    }
    if (t == _i1.getType<_i4.Address?>()) {
      return (data != null ? _i4.Address.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Blocking?>()) {
      return (data != null ? _i5.Blocking.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Cat?>()) {
      return (data != null ? _i6.Cat.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Company?>()) {
      return (data != null ? _i7.Company.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Course?>()) {
      return (data != null ? _i8.Course.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.CustomException?>()) {
      return (data != null ? _i9.CustomException.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.Employee?>()) {
      return (data != null ? _i10.Employee.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.Enrollment?>()) {
      return (data != null ? _i11.Enrollment.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.ErrorType?>()) {
      return (data != null ? _i12.ErrorType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.Example?>()) {
      return (data != null ? _i13.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.Member?>()) {
      return (data != null ? _i14.Member.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.Order?>()) {
      return (data != null ? _i15.Order.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.Post?>()) {
      return (data != null ? _i16.Post.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i17.Student?>()) {
      return (data != null ? _i17.Student.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i18.User?>()) {
      return (data != null ? _i18.User.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i19.UserData?>()) {
      return (data != null ? _i19.UserData.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i20.Cat>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i20.Cat>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i20.User>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i20.User>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i20.Employee>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i20.Employee>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i20.Order>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i20.Order>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i20.Enrollment>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i20.Enrollment>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i20.Blocking>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i20.Blocking>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i20.Blocking>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i20.Blocking>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i20.Enrollment>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i20.Enrollment>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i20.Order>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i20.Order>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i21.Blocking>) {
      return (data as List).map((e) => deserialize<_i21.Blocking>(e)).toList()
          as dynamic;
    }
    if (t == List<_i22.Cat>) {
      return (data as List).map((e) => deserialize<_i22.Cat>(e)).toList()
          as dynamic;
    }
    if (t == List<_i23.Company>) {
      return (data as List).map((e) => deserialize<_i23.Company>(e)).toList()
          as dynamic;
    }
    if (t == Map<String, dynamic>) {
      return (data as Map).map((k, v) =>
          MapEntry(deserialize<String>(k), deserialize<dynamic>(v))) as dynamic;
    }
    if (t == List<_i24.Post>) {
      return (data as List).map((e) => deserialize<_i24.Post>(e)).toList()
          as dynamic;
    }
    if (t == List<_i25.User>) {
      return (data as List).map((e) => deserialize<_i25.User>(e)).toList()
          as dynamic;
    }
    if (t == Set<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toSet()
          as dynamic;
    }
    if (t == _i26.ClassName) {
      return _i26.ClassName.fromJson(data) as T;
    }
    if (t == _i26.FreezedCustomClass) {
      return _i26.FreezedCustomClass.fromJson(data) as T;
    }
    if (t == _i1.getType<_i26.ClassName?>()) {
      return (data != null ? _i26.ClassName.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i26.FreezedCustomClass?>()) {
      return (data != null ? _i26.FreezedCustomClass.fromJson(data) : null)
          as T;
    }
    try {
      return _i3.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i3.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i26.ClassName) {
      return 'ClassName';
    }
    if (data is _i26.FreezedCustomClass) {
      return 'FreezedCustomClass';
    }
    if (data is _i4.Address) {
      return 'Address';
    }
    if (data is _i5.Blocking) {
      return 'Blocking';
    }
    if (data is _i6.Cat) {
      return 'Cat';
    }
    if (data is _i7.Company) {
      return 'Company';
    }
    if (data is _i8.Course) {
      return 'Course';
    }
    if (data is _i9.CustomException) {
      return 'CustomException';
    }
    if (data is _i10.Employee) {
      return 'Employee';
    }
    if (data is _i11.Enrollment) {
      return 'Enrollment';
    }
    if (data is _i12.ErrorType) {
      return 'ErrorType';
    }
    if (data is _i13.Example) {
      return 'Example';
    }
    if (data is _i14.Member) {
      return 'Member';
    }
    if (data is _i15.Order) {
      return 'Order';
    }
    if (data is _i16.Post) {
      return 'Post';
    }
    if (data is _i17.Student) {
      return 'Student';
    }
    if (data is _i18.User) {
      return 'User';
    }
    if (data is _i19.UserData) {
      return 'UserData';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i3.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'ClassName') {
      return deserialize<_i26.ClassName>(data['data']);
    }
    if (data['className'] == 'FreezedCustomClass') {
      return deserialize<_i26.FreezedCustomClass>(data['data']);
    }
    if (data['className'] == 'Address') {
      return deserialize<_i4.Address>(data['data']);
    }
    if (data['className'] == 'Blocking') {
      return deserialize<_i5.Blocking>(data['data']);
    }
    if (data['className'] == 'Cat') {
      return deserialize<_i6.Cat>(data['data']);
    }
    if (data['className'] == 'Company') {
      return deserialize<_i7.Company>(data['data']);
    }
    if (data['className'] == 'Course') {
      return deserialize<_i8.Course>(data['data']);
    }
    if (data['className'] == 'CustomException') {
      return deserialize<_i9.CustomException>(data['data']);
    }
    if (data['className'] == 'Employee') {
      return deserialize<_i10.Employee>(data['data']);
    }
    if (data['className'] == 'Enrollment') {
      return deserialize<_i11.Enrollment>(data['data']);
    }
    if (data['className'] == 'ErrorType') {
      return deserialize<_i12.ErrorType>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i13.Example>(data['data']);
    }
    if (data['className'] == 'Member') {
      return deserialize<_i14.Member>(data['data']);
    }
    if (data['className'] == 'Order') {
      return deserialize<_i15.Order>(data['data']);
    }
    if (data['className'] == 'Post') {
      return deserialize<_i16.Post>(data['data']);
    }
    if (data['className'] == 'Student') {
      return deserialize<_i17.Student>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i18.User>(data['data']);
    }
    if (data['className'] == 'UserData') {
      return deserialize<_i19.UserData>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i3.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i4.Address:
        return _i4.Address.t;
      case _i5.Blocking:
        return _i5.Blocking.t;
      case _i6.Cat:
        return _i6.Cat.t;
      case _i7.Company:
        return _i7.Company.t;
      case _i8.Course:
        return _i8.Course.t;
      case _i10.Employee:
        return _i10.Employee.t;
      case _i11.Enrollment:
        return _i11.Enrollment.t;
      case _i13.Example:
        return _i13.Example.t;
      case _i14.Member:
        return _i14.Member.t;
      case _i15.Order:
        return _i15.Order.t;
      case _i16.Post:
        return _i16.Post.t;
      case _i17.Student:
        return _i17.Student.t;
      case _i18.User:
        return _i18.User.t;
      case _i19.UserData:
        return _i19.UserData.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'serverpod_architecture';
}
