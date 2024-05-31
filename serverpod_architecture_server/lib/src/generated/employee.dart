/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class Employee extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  Employee._({
    int? id,
    required this.companyId,
    this.company,
    required this.name,
    this.email,
    this.phone,
    this.address,
    this.isActive,
  }) : super(id);

  factory Employee({
    int? id,
    required int companyId,
    _i2.Company? company,
    required String name,
    String? email,
    String? phone,
    String? address,
    bool? isActive,
  }) = _EmployeeImpl;

  factory Employee.fromJson(Map<String, dynamic> jsonSerialization) {
    return Employee(
      id: jsonSerialization['id'] as int?,
      companyId: jsonSerialization['companyId'] as int,
      company: jsonSerialization['company'] == null
          ? null
          : _i2.Company.fromJson(
              (jsonSerialization['company'] as Map<String, dynamic>)),
      name: jsonSerialization['name'] as String,
      email: jsonSerialization['email'] as String?,
      phone: jsonSerialization['phone'] as String?,
      address: jsonSerialization['address'] as String?,
      isActive: jsonSerialization['isActive'] as bool?,
    );
  }

  static final t = EmployeeTable();

  static const db = EmployeeRepository._();

  int companyId;

  _i2.Company? company;

  String name;

  String? email;

  String? phone;

  String? address;

  bool? isActive;

  @override
  _i1.Table get table => t;

  Employee copyWith({
    int? id,
    int? companyId,
    _i2.Company? company,
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
      'companyId': companyId,
      if (company != null) 'company': company?.toJson(),
      'name': name,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (address != null) 'address': address,
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'companyId': companyId,
      if (company != null) 'company': company?.toJsonForProtocol(),
      'name': name,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (address != null) 'address': address,
    };
  }

  static EmployeeInclude include({_i2.CompanyInclude? company}) {
    return EmployeeInclude._(company: company);
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _EmployeeImpl extends Employee {
  _EmployeeImpl({
    int? id,
    required int companyId,
    _i2.Company? company,
    required String name,
    String? email,
    String? phone,
    String? address,
    bool? isActive,
  }) : super._(
          id: id,
          companyId: companyId,
          company: company,
          name: name,
          email: email,
          phone: phone,
          address: address,
          isActive: isActive,
        );

  @override
  Employee copyWith({
    Object? id = _Undefined,
    int? companyId,
    Object? company = _Undefined,
    String? name,
    Object? email = _Undefined,
    Object? phone = _Undefined,
    Object? address = _Undefined,
    Object? isActive = _Undefined,
  }) {
    return Employee(
      id: id is int? ? id : this.id,
      companyId: companyId ?? this.companyId,
      company: company is _i2.Company? ? company : this.company?.copyWith(),
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
    companyId = _i1.ColumnInt(
      'companyId',
      this,
    );
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

  late final _i1.ColumnInt companyId;

  _i2.CompanyTable? _company;

  late final _i1.ColumnString name;

  late final _i1.ColumnString email;

  late final _i1.ColumnString phone;

  late final _i1.ColumnString address;

  late final _i1.ColumnBool isActive;

  _i2.CompanyTable get company {
    if (_company != null) return _company!;
    _company = _i1.createRelationTable(
      relationFieldName: 'company',
      field: Employee.t.companyId,
      foreignField: _i2.Company.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.CompanyTable(tableRelation: foreignTableRelation),
    );
    return _company!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        companyId,
        name,
        email,
        phone,
        address,
        isActive,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'company') {
      return company;
    }
    return null;
  }
}

class EmployeeInclude extends _i1.IncludeObject {
  EmployeeInclude._({_i2.CompanyInclude? company}) {
    _company = company;
  }

  _i2.CompanyInclude? _company;

  @override
  Map<String, _i1.Include?> get includes => {'company': _company};

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

  final attachRow = const EmployeeAttachRowRepository._();

  Future<List<Employee>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EmployeeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EmployeeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EmployeeTable>? orderByList,
    _i1.Transaction? transaction,
    EmployeeInclude? include,
  }) async {
    return session.db.find<Employee>(
      where: where?.call(Employee.t),
      orderBy: orderBy?.call(Employee.t),
      orderByList: orderByList?.call(Employee.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
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
    EmployeeInclude? include,
  }) async {
    return session.db.findFirstRow<Employee>(
      where: where?.call(Employee.t),
      orderBy: orderBy?.call(Employee.t),
      orderByList: orderByList?.call(Employee.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Employee?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    EmployeeInclude? include,
  }) async {
    return session.db.findById<Employee>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Employee>> insert(
    _i1.Session session,
    List<Employee> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Employee>(
      rows,
      transaction: transaction,
    );
  }

  Future<Employee> insertRow(
    _i1.Session session,
    Employee row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Employee>(
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
    return session.db.update<Employee>(
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
    return session.db.updateRow<Employee>(
      row,
      columns: columns?.call(Employee.t),
      transaction: transaction,
    );
  }

  Future<List<Employee>> delete(
    _i1.Session session,
    List<Employee> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Employee>(
      rows,
      transaction: transaction,
    );
  }

  Future<Employee> deleteRow(
    _i1.Session session,
    Employee row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Employee>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Employee>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EmployeeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Employee>(
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
    return session.db.count<Employee>(
      where: where?.call(Employee.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class EmployeeAttachRowRepository {
  const EmployeeAttachRowRepository._();

  Future<void> company(
    _i1.Session session,
    Employee employee,
    _i2.Company company,
  ) async {
    if (employee.id == null) {
      throw ArgumentError.notNull('employee.id');
    }
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }

    var $employee = employee.copyWith(companyId: company.id);
    await session.db.updateRow<Employee>(
      $employee,
      columns: [Employee.t.companyId],
    );
  }
}
