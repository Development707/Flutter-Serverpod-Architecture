/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Employee extends _i1.TableRow {
  Employee._({
    int? id,
    required this.name,
    this.email,
    this.phone,
    this.address,
    this.isActive,
  }) : super(id);

  factory Employee({
    int? id,
    required String name,
    String? email,
    String? phone,
    String? address,
    bool? isActive,
  }) = _EmployeeImpl;

  factory Employee.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Employee(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      email:
          serializationManager.deserialize<String?>(jsonSerialization['email']),
      phone:
          serializationManager.deserialize<String?>(jsonSerialization['phone']),
      address: serializationManager
          .deserialize<String?>(jsonSerialization['address']),
      isActive: serializationManager
          .deserialize<bool?>(jsonSerialization['isActive']),
    );
  }

  static final t = EmployeeTable();

  static const db = EmployeeRepository._();

  String name;

  String? email;

  String? phone;

  String? address;

  bool? isActive;

  @override
  _i1.Table get table => t;

  Employee copyWith({
    int? id,
    String? name,
    String? email,
    String? phone,
    String? address,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (address != null) 'address': address,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'address': address,
      'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (address != null) 'address': address,
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'name':
        name = value;
        return;
      case 'email':
        email = value;
        return;
      case 'phone':
        phone = value;
        return;
      case 'address':
        address = value;
        return;
      case 'isActive':
        isActive = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Employee>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EmployeeTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Employee>(
      where: where != null ? where(Employee.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Employee?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EmployeeTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Employee>(
      where: where != null ? where(Employee.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Employee?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Employee>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EmployeeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Employee>(
      where: where(Employee.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Employee row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Employee row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Employee row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EmployeeTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Employee>(
      where: where != null ? where(Employee.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static EmployeeInclude include() {
    return EmployeeInclude._();
  }

  static EmployeeIncludeList includeList({
    _i1.WhereExpressionBuilder<EmployeeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EmployeeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EmployeeTable>? orderByList,
    EmployeeInclude? include,
  }) {
    return EmployeeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Employee.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Employee.t),
      include: include,
    );
  }
}

class _Undefined {}

class _EmployeeImpl extends Employee {
  _EmployeeImpl({
    int? id,
    required String name,
    String? email,
    String? phone,
    String? address,
    bool? isActive,
  }) : super._(
          id: id,
          name: name,
          email: email,
          phone: phone,
          address: address,
          isActive: isActive,
        );

  @override
  Employee copyWith({
    Object? id = _Undefined,
    String? name,
    Object? email = _Undefined,
    Object? phone = _Undefined,
    Object? address = _Undefined,
    Object? isActive = _Undefined,
  }) {
    return Employee(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      email: email is String? ? email : this.email,
      phone: phone is String? ? phone : this.phone,
      address: address is String? ? address : this.address,
      isActive: isActive is bool? ? isActive : this.isActive,
    );
  }
}

class EmployeeTable extends _i1.Table {
  EmployeeTable({super.tableRelation}) : super(tableName: 'employee') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
    phone = _i1.ColumnString(
      'phone',
      this,
    );
    address = _i1.ColumnString(
      'address',
      this,
    );
    isActive = _i1.ColumnBool(
      'isActive',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString email;

  late final _i1.ColumnString phone;

  late final _i1.ColumnString address;

  late final _i1.ColumnBool isActive;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        email,
        phone,
        address,
        isActive,
      ];
}

@Deprecated('Use EmployeeTable.t instead.')
EmployeeTable tEmployee = EmployeeTable();

class EmployeeInclude extends _i1.IncludeObject {
  EmployeeInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Employee.t;
}

class EmployeeIncludeList extends _i1.IncludeList {
  EmployeeIncludeList._({
    _i1.WhereExpressionBuilder<EmployeeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Employee.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Employee.t;
}

class EmployeeRepository {
  const EmployeeRepository._();

  Future<List<Employee>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EmployeeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EmployeeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EmployeeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Employee>(
      where: where?.call(Employee.t),
      orderBy: orderBy?.call(Employee.t),
      orderByList: orderByList?.call(Employee.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Employee?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EmployeeTable>? where,
    int? offset,
    _i1.OrderByBuilder<EmployeeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EmployeeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Employee>(
      where: where?.call(Employee.t),
      orderBy: orderBy?.call(Employee.t),
      orderByList: orderByList?.call(Employee.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Employee?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Employee>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Employee>> insert(
    _i1.Session session,
    List<Employee> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Employee>(
      rows,
      transaction: transaction,
    );
  }

  Future<Employee> insertRow(
    _i1.Session session,
    Employee row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Employee>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Employee>> update(
    _i1.Session session,
    List<Employee> rows, {
    _i1.ColumnSelections<EmployeeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Employee>(
      rows,
      columns: columns?.call(Employee.t),
      transaction: transaction,
    );
  }

  Future<Employee> updateRow(
    _i1.Session session,
    Employee row, {
    _i1.ColumnSelections<EmployeeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Employee>(
      row,
      columns: columns?.call(Employee.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Employee> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Employee>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Employee row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Employee>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EmployeeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Employee>(
      where: where(Employee.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EmployeeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Employee>(
      where: where?.call(Employee.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
