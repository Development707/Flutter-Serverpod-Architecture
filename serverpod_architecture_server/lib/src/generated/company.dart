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
import 'package:serverpod_serialization/serverpod_serialization.dart';

/// Information about a company.
abstract class Company extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  Company._({
    int? id,
    required this.name,
    this.foundedDate,
    this.employees,
    this.workers,
    this.addressId,
    this.address,
    this.orders,
    this.ceoId,
    this.ceo,
  }) : super(id);

  factory Company({
    int? id,
    required String name,
    DateTime? foundedDate,
    List<_i2.User>? employees,
    List<_i2.Employee>? workers,
    int? addressId,
    _i2.Address? address,
    List<_i2.Order>? orders,
    int? ceoId,
    _i2.User? ceo,
  }) = _CompanyImpl;

  factory Company.fromJson(Map<String, dynamic> jsonSerialization) {
    return Company(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      foundedDate: jsonSerialization['foundedDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['foundedDate']),
      employees: (jsonSerialization['employees'] as List?)
          ?.map((e) => _i2.User.fromJson((e as Map<String, dynamic>)))
          .toList(),
      workers: (jsonSerialization['workers'] as List?)
          ?.map((e) => _i2.Employee.fromJson((e as Map<String, dynamic>)))
          .toList(),
      addressId: jsonSerialization['addressId'] as int?,
      address: jsonSerialization['address'] == null
          ? null
          : _i2.Address.fromJson(
              (jsonSerialization['address'] as Map<String, dynamic>)),
      orders: (jsonSerialization['orders'] as List?)
          ?.map((e) => _i2.Order.fromJson((e as Map<String, dynamic>)))
          .toList(),
      ceoId: jsonSerialization['ceoId'] as int?,
      ceo: jsonSerialization['ceo'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['ceo'] as Map<String, dynamic>)),
    );
  }

  static final t = CompanyTable();

  static const db = CompanyRepository._();

  /// The name of the company.
  String name;

  /// The date the company was founded, if known.
  DateTime? foundedDate;

  /// A list of people currently employed at the company.
  List<_i2.User>? employees;

  List<_i2.Employee>? workers;

  int? addressId;

  _i2.Address? address;

  List<_i2.Order>? orders;

  int? ceoId;

  _i2.User? ceo;

  @override
  _i1.Table get table => t;

  Company copyWith({
    int? id,
    String? name,
    DateTime? foundedDate,
    List<_i2.User>? employees,
    List<_i2.Employee>? workers,
    int? addressId,
    _i2.Address? address,
    List<_i2.Order>? orders,
    int? ceoId,
    _i2.User? ceo,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (foundedDate != null) 'foundedDate': foundedDate?.toJson(),
      if (employees != null)
        'employees': employees?.toJson(valueToJson: (v) => v.toJson()),
      if (workers != null)
        'workers': workers?.toJson(valueToJson: (v) => v.toJson()),
      if (addressId != null) 'addressId': addressId,
      if (address != null) 'address': address?.toJson(),
      if (orders != null)
        'orders': orders?.toJson(valueToJson: (v) => v.toJson()),
      if (ceoId != null) 'ceoId': ceoId,
      if (ceo != null) 'ceo': ceo?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (foundedDate != null) 'foundedDate': foundedDate?.toJson(),
      if (employees != null)
        'employees':
            employees?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (workers != null)
        'workers': workers?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (addressId != null) 'addressId': addressId,
      if (address != null) 'address': address?.toJsonForProtocol(),
      if (orders != null)
        'orders': orders?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (ceoId != null) 'ceoId': ceoId,
      if (ceo != null) 'ceo': ceo?.toJsonForProtocol(),
    };
  }

  static CompanyInclude include({
    _i2.UserIncludeList? employees,
    _i2.EmployeeIncludeList? workers,
    _i2.AddressInclude? address,
    _i2.OrderIncludeList? orders,
    _i2.UserInclude? ceo,
  }) {
    return CompanyInclude._(
      employees: employees,
      workers: workers,
      address: address,
      orders: orders,
      ceo: ceo,
    );
  }

  static CompanyIncludeList includeList({
    _i1.WhereExpressionBuilder<CompanyTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CompanyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CompanyTable>? orderByList,
    CompanyInclude? include,
  }) {
    return CompanyIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Company.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Company.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CompanyImpl extends Company {
  _CompanyImpl({
    int? id,
    required String name,
    DateTime? foundedDate,
    List<_i2.User>? employees,
    List<_i2.Employee>? workers,
    int? addressId,
    _i2.Address? address,
    List<_i2.Order>? orders,
    int? ceoId,
    _i2.User? ceo,
  }) : super._(
          id: id,
          name: name,
          foundedDate: foundedDate,
          employees: employees,
          workers: workers,
          addressId: addressId,
          address: address,
          orders: orders,
          ceoId: ceoId,
          ceo: ceo,
        );

  @override
  Company copyWith({
    Object? id = _Undefined,
    String? name,
    Object? foundedDate = _Undefined,
    Object? employees = _Undefined,
    Object? workers = _Undefined,
    Object? addressId = _Undefined,
    Object? address = _Undefined,
    Object? orders = _Undefined,
    Object? ceoId = _Undefined,
    Object? ceo = _Undefined,
  }) {
    return Company(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      foundedDate: foundedDate is DateTime? ? foundedDate : this.foundedDate,
      employees:
          employees is List<_i2.User>? ? employees : this.employees?.clone(),
      workers: workers is List<_i2.Employee>? ? workers : this.workers?.clone(),
      addressId: addressId is int? ? addressId : this.addressId,
      address: address is _i2.Address? ? address : this.address?.copyWith(),
      orders: orders is List<_i2.Order>? ? orders : this.orders?.clone(),
      ceoId: ceoId is int? ? ceoId : this.ceoId,
      ceo: ceo is _i2.User? ? ceo : this.ceo?.copyWith(),
    );
  }
}

class CompanyTable extends _i1.Table {
  CompanyTable({super.tableRelation}) : super(tableName: 'company') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    addressId = _i1.ColumnInt(
      'addressId',
      this,
    );
    ceoId = _i1.ColumnInt(
      'ceoId',
      this,
    );
  }

  /// The name of the company.
  late final _i1.ColumnString name;

  /// A list of people currently employed at the company.
  _i2.UserTable? ___employees;

  /// A list of people currently employed at the company.
  _i1.ManyRelation<_i2.UserTable>? _employees;

  _i2.EmployeeTable? ___workers;

  _i1.ManyRelation<_i2.EmployeeTable>? _workers;

  late final _i1.ColumnInt addressId;

  _i2.AddressTable? _address;

  _i2.OrderTable? ___orders;

  _i1.ManyRelation<_i2.OrderTable>? _orders;

  late final _i1.ColumnInt ceoId;

  _i2.UserTable? _ceo;

  _i2.UserTable get __employees {
    if (___employees != null) return ___employees!;
    ___employees = _i1.createRelationTable(
      relationFieldName: '__employees',
      field: Company.t.id,
      foreignField: _i2.User.t.companyId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return ___employees!;
  }

  _i2.EmployeeTable get __workers {
    if (___workers != null) return ___workers!;
    ___workers = _i1.createRelationTable(
      relationFieldName: '__workers',
      field: Company.t.id,
      foreignField: _i2.Employee.t.companyId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.EmployeeTable(tableRelation: foreignTableRelation),
    );
    return ___workers!;
  }

  _i2.AddressTable get address {
    if (_address != null) return _address!;
    _address = _i1.createRelationTable(
      relationFieldName: 'address',
      field: Company.t.addressId,
      foreignField: _i2.Address.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.AddressTable(tableRelation: foreignTableRelation),
    );
    return _address!;
  }

  _i2.OrderTable get __orders {
    if (___orders != null) return ___orders!;
    ___orders = _i1.createRelationTable(
      relationFieldName: '__orders',
      field: Company.t.id,
      foreignField: _i2.Order.t.companyId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.OrderTable(tableRelation: foreignTableRelation),
    );
    return ___orders!;
  }

  _i2.UserTable get ceo {
    if (_ceo != null) return _ceo!;
    _ceo = _i1.createRelationTable(
      relationFieldName: 'ceo',
      field: Company.t.ceoId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _ceo!;
  }

  _i1.ManyRelation<_i2.UserTable> get employees {
    if (_employees != null) return _employees!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'employees',
      field: Company.t.id,
      foreignField: _i2.User.t.companyId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    _employees = _i1.ManyRelation<_i2.UserTable>(
      tableWithRelations: relationTable,
      table: _i2.UserTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _employees!;
  }

  _i1.ManyRelation<_i2.EmployeeTable> get workers {
    if (_workers != null) return _workers!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'workers',
      field: Company.t.id,
      foreignField: _i2.Employee.t.companyId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.EmployeeTable(tableRelation: foreignTableRelation),
    );
    _workers = _i1.ManyRelation<_i2.EmployeeTable>(
      tableWithRelations: relationTable,
      table: _i2.EmployeeTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _workers!;
  }

  _i1.ManyRelation<_i2.OrderTable> get orders {
    if (_orders != null) return _orders!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'orders',
      field: Company.t.id,
      foreignField: _i2.Order.t.companyId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.OrderTable(tableRelation: foreignTableRelation),
    );
    _orders = _i1.ManyRelation<_i2.OrderTable>(
      tableWithRelations: relationTable,
      table: _i2.OrderTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _orders!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        addressId,
        ceoId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'employees') {
      return __employees;
    }
    if (relationField == 'workers') {
      return __workers;
    }
    if (relationField == 'address') {
      return address;
    }
    if (relationField == 'orders') {
      return __orders;
    }
    if (relationField == 'ceo') {
      return ceo;
    }
    return null;
  }
}

class CompanyInclude extends _i1.IncludeObject {
  CompanyInclude._({
    _i2.UserIncludeList? employees,
    _i2.EmployeeIncludeList? workers,
    _i2.AddressInclude? address,
    _i2.OrderIncludeList? orders,
    _i2.UserInclude? ceo,
  }) {
    _employees = employees;
    _workers = workers;
    _address = address;
    _orders = orders;
    _ceo = ceo;
  }

  _i2.UserIncludeList? _employees;

  _i2.EmployeeIncludeList? _workers;

  _i2.AddressInclude? _address;

  _i2.OrderIncludeList? _orders;

  _i2.UserInclude? _ceo;

  @override
  Map<String, _i1.Include?> get includes => {
        'employees': _employees,
        'workers': _workers,
        'address': _address,
        'orders': _orders,
        'ceo': _ceo,
      };

  @override
  _i1.Table get table => Company.t;
}

class CompanyIncludeList extends _i1.IncludeList {
  CompanyIncludeList._({
    _i1.WhereExpressionBuilder<CompanyTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Company.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Company.t;
}

class CompanyRepository {
  const CompanyRepository._();

  final attach = const CompanyAttachRepository._();

  final attachRow = const CompanyAttachRowRepository._();

  final detach = const CompanyDetachRepository._();

  final detachRow = const CompanyDetachRowRepository._();

  Future<List<Company>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CompanyTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CompanyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CompanyTable>? orderByList,
    _i1.Transaction? transaction,
    CompanyInclude? include,
  }) async {
    return session.db.find<Company>(
      where: where?.call(Company.t),
      orderBy: orderBy?.call(Company.t),
      orderByList: orderByList?.call(Company.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Company?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CompanyTable>? where,
    int? offset,
    _i1.OrderByBuilder<CompanyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CompanyTable>? orderByList,
    _i1.Transaction? transaction,
    CompanyInclude? include,
  }) async {
    return session.db.findFirstRow<Company>(
      where: where?.call(Company.t),
      orderBy: orderBy?.call(Company.t),
      orderByList: orderByList?.call(Company.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Company?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    CompanyInclude? include,
  }) async {
    return session.db.findById<Company>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Company>> insert(
    _i1.Session session,
    List<Company> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Company>(
      rows,
      transaction: transaction,
    );
  }

  Future<Company> insertRow(
    _i1.Session session,
    Company row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Company>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Company>> update(
    _i1.Session session,
    List<Company> rows, {
    _i1.ColumnSelections<CompanyTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Company>(
      rows,
      columns: columns?.call(Company.t),
      transaction: transaction,
    );
  }

  Future<Company> updateRow(
    _i1.Session session,
    Company row, {
    _i1.ColumnSelections<CompanyTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Company>(
      row,
      columns: columns?.call(Company.t),
      transaction: transaction,
    );
  }

  Future<List<Company>> delete(
    _i1.Session session,
    List<Company> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Company>(
      rows,
      transaction: transaction,
    );
  }

  Future<Company> deleteRow(
    _i1.Session session,
    Company row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Company>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Company>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CompanyTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Company>(
      where: where(Company.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CompanyTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Company>(
      where: where?.call(Company.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class CompanyAttachRepository {
  const CompanyAttachRepository._();

  Future<void> employees(
    _i1.Session session,
    Company company,
    List<_i2.User> user,
  ) async {
    if (user.any((e) => e.id == null)) {
      throw ArgumentError.notNull('user.id');
    }
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }

    var $user = user.map((e) => e.copyWith(companyId: company.id)).toList();
    await session.db.update<_i2.User>(
      $user,
      columns: [_i2.User.t.companyId],
    );
  }

  Future<void> workers(
    _i1.Session session,
    Company company,
    List<_i2.Employee> employee,
  ) async {
    if (employee.any((e) => e.id == null)) {
      throw ArgumentError.notNull('employee.id');
    }
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }

    var $employee =
        employee.map((e) => e.copyWith(companyId: company.id)).toList();
    await session.db.update<_i2.Employee>(
      $employee,
      columns: [_i2.Employee.t.companyId],
    );
  }

  Future<void> orders(
    _i1.Session session,
    Company company,
    List<_i2.Order> order,
  ) async {
    if (order.any((e) => e.id == null)) {
      throw ArgumentError.notNull('order.id');
    }
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }

    var $order = order.map((e) => e.copyWith(companyId: company.id)).toList();
    await session.db.update<_i2.Order>(
      $order,
      columns: [_i2.Order.t.companyId],
    );
  }
}

class CompanyAttachRowRepository {
  const CompanyAttachRowRepository._();

  Future<void> address(
    _i1.Session session,
    Company company,
    _i2.Address address,
  ) async {
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }
    if (address.id == null) {
      throw ArgumentError.notNull('address.id');
    }

    var $company = company.copyWith(addressId: address.id);
    await session.db.updateRow<Company>(
      $company,
      columns: [Company.t.addressId],
    );
  }

  Future<void> ceo(
    _i1.Session session,
    Company company,
    _i2.User ceo,
  ) async {
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }
    if (ceo.id == null) {
      throw ArgumentError.notNull('ceo.id');
    }

    var $company = company.copyWith(ceoId: ceo.id);
    await session.db.updateRow<Company>(
      $company,
      columns: [Company.t.ceoId],
    );
  }

  Future<void> employees(
    _i1.Session session,
    Company company,
    _i2.User user,
  ) async {
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }

    var $user = user.copyWith(companyId: company.id);
    await session.db.updateRow<_i2.User>(
      $user,
      columns: [_i2.User.t.companyId],
    );
  }

  Future<void> workers(
    _i1.Session session,
    Company company,
    _i2.Employee employee,
  ) async {
    if (employee.id == null) {
      throw ArgumentError.notNull('employee.id');
    }
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }

    var $employee = employee.copyWith(companyId: company.id);
    await session.db.updateRow<_i2.Employee>(
      $employee,
      columns: [_i2.Employee.t.companyId],
    );
  }

  Future<void> orders(
    _i1.Session session,
    Company company,
    _i2.Order order,
  ) async {
    if (order.id == null) {
      throw ArgumentError.notNull('order.id');
    }
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }

    var $order = order.copyWith(companyId: company.id);
    await session.db.updateRow<_i2.Order>(
      $order,
      columns: [_i2.Order.t.companyId],
    );
  }
}

class CompanyDetachRepository {
  const CompanyDetachRepository._();

  Future<void> employees(
    _i1.Session session,
    List<_i2.User> user,
  ) async {
    if (user.any((e) => e.id == null)) {
      throw ArgumentError.notNull('user.id');
    }

    var $user = user.map((e) => e.copyWith(companyId: null)).toList();
    await session.db.update<_i2.User>(
      $user,
      columns: [_i2.User.t.companyId],
    );
  }

  Future<void> workers(
    _i1.Session session,
    List<_i2.Employee> employee,
  ) async {
    if (employee.any((e) => e.id == null)) {
      throw ArgumentError.notNull('employee.id');
    }

    var $employee = employee.map((e) => e.copyWith(companyId: null)).toList();
    await session.db.update<_i2.Employee>(
      $employee,
      columns: [_i2.Employee.t.companyId],
    );
  }

  Future<void> orders(
    _i1.Session session,
    List<_i2.Order> order,
  ) async {
    if (order.any((e) => e.id == null)) {
      throw ArgumentError.notNull('order.id');
    }

    var $order = order.map((e) => e.copyWith(companyId: null)).toList();
    await session.db.update<_i2.Order>(
      $order,
      columns: [_i2.Order.t.companyId],
    );
  }
}

class CompanyDetachRowRepository {
  const CompanyDetachRowRepository._();

  Future<void> address(
    _i1.Session session,
    Company company,
  ) async {
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }

    var $company = company.copyWith(addressId: null);
    await session.db.updateRow<Company>(
      $company,
      columns: [Company.t.addressId],
    );
  }

  Future<void> ceo(
    _i1.Session session,
    Company company,
  ) async {
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }

    var $company = company.copyWith(ceoId: null);
    await session.db.updateRow<Company>(
      $company,
      columns: [Company.t.ceoId],
    );
  }

  Future<void> employees(
    _i1.Session session,
    _i2.User user,
  ) async {
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $user = user.copyWith(companyId: null);
    await session.db.updateRow<_i2.User>(
      $user,
      columns: [_i2.User.t.companyId],
    );
  }

  Future<void> workers(
    _i1.Session session,
    _i2.Employee employee,
  ) async {
    if (employee.id == null) {
      throw ArgumentError.notNull('employee.id');
    }

    var $employee = employee.copyWith(companyId: null);
    await session.db.updateRow<_i2.Employee>(
      $employee,
      columns: [_i2.Employee.t.companyId],
    );
  }

  Future<void> orders(
    _i1.Session session,
    _i2.Order order,
  ) async {
    if (order.id == null) {
      throw ArgumentError.notNull('order.id');
    }

    var $order = order.copyWith(companyId: null);
    await session.db.updateRow<_i2.Order>(
      $order,
      columns: [_i2.Order.t.companyId],
    );
  }
}
