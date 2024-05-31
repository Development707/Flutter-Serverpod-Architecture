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

abstract class User extends _i1.TableRow implements _i1.ProtocolSerialization {
  User._({
    int? id,
    required this.addressId,
    required this.age,
    required this.companyId,
    this.company,
  }) : super(id);

  factory User({
    int? id,
    required int addressId,
    required int age,
    required int companyId,
    _i2.Company? company,
  }) = _UserImpl;

  factory User.fromJson(Map<String, dynamic> jsonSerialization) {
    return User(
      id: jsonSerialization['id'] as int?,
      addressId: jsonSerialization['addressId'] as int,
      age: jsonSerialization['age'] as int,
      companyId: jsonSerialization['companyId'] as int,
      company: jsonSerialization['company'] == null
          ? null
          : _i2.Company.fromJson(
              (jsonSerialization['company'] as Map<String, dynamic>)),
    );
  }

  static final t = UserTable();

  static const db = UserRepository._();

  int addressId;

  int age;

  int companyId;

  _i2.Company? company;

  @override
  _i1.Table get table => t;

  User copyWith({
    int? id,
    int? addressId,
    int? age,
    int? companyId,
    _i2.Company? company,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'addressId': addressId,
      'age': age,
      'companyId': companyId,
      if (company != null) 'company': company?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'addressId': addressId,
      'age': age,
      'companyId': companyId,
      if (company != null) 'company': company?.toJsonForProtocol(),
    };
  }

  static UserInclude include({_i2.CompanyInclude? company}) {
    return UserInclude._(company: company);
  }

  static UserIncludeList includeList({
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    UserInclude? include,
  }) {
    return UserIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(User.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(User.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserImpl extends User {
  _UserImpl({
    int? id,
    required int addressId,
    required int age,
    required int companyId,
    _i2.Company? company,
  }) : super._(
          id: id,
          addressId: addressId,
          age: age,
          companyId: companyId,
          company: company,
        );

  @override
  User copyWith({
    Object? id = _Undefined,
    int? addressId,
    int? age,
    int? companyId,
    Object? company = _Undefined,
  }) {
    return User(
      id: id is int? ? id : this.id,
      addressId: addressId ?? this.addressId,
      age: age ?? this.age,
      companyId: companyId ?? this.companyId,
      company: company is _i2.Company? ? company : this.company?.copyWith(),
    );
  }
}

class UserTable extends _i1.Table {
  UserTable({super.tableRelation}) : super(tableName: 'user') {
    addressId = _i1.ColumnInt(
      'addressId',
      this,
    );
    age = _i1.ColumnInt(
      'age',
      this,
    );
    companyId = _i1.ColumnInt(
      'companyId',
      this,
    );
  }

  late final _i1.ColumnInt addressId;

  late final _i1.ColumnInt age;

  late final _i1.ColumnInt companyId;

  _i2.CompanyTable? _company;

  _i2.CompanyTable get company {
    if (_company != null) return _company!;
    _company = _i1.createRelationTable(
      relationFieldName: 'company',
      field: User.t.companyId,
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
        addressId,
        age,
        companyId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'company') {
      return company;
    }
    return null;
  }
}

class UserInclude extends _i1.IncludeObject {
  UserInclude._({_i2.CompanyInclude? company}) {
    _company = company;
  }

  _i2.CompanyInclude? _company;

  @override
  Map<String, _i1.Include?> get includes => {'company': _company};

  @override
  _i1.Table get table => User.t;
}

class UserIncludeList extends _i1.IncludeList {
  UserIncludeList._({
    _i1.WhereExpressionBuilder<UserTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(User.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => User.t;
}

class UserRepository {
  const UserRepository._();

  final attachRow = const UserAttachRowRepository._();

  Future<List<User>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return session.db.find<User>(
      where: where?.call(User.t),
      orderBy: orderBy?.call(User.t),
      orderByList: orderByList?.call(User.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<User?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return session.db.findFirstRow<User>(
      where: where?.call(User.t),
      orderBy: orderBy?.call(User.t),
      orderByList: orderByList?.call(User.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<User?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return session.db.findById<User>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<User>> insert(
    _i1.Session session,
    List<User> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<User>(
      rows,
      transaction: transaction,
    );
  }

  Future<User> insertRow(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<User>(
      row,
      transaction: transaction,
    );
  }

  Future<List<User>> update(
    _i1.Session session,
    List<User> rows, {
    _i1.ColumnSelections<UserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<User>(
      rows,
      columns: columns?.call(User.t),
      transaction: transaction,
    );
  }

  Future<User> updateRow(
    _i1.Session session,
    User row, {
    _i1.ColumnSelections<UserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<User>(
      row,
      columns: columns?.call(User.t),
      transaction: transaction,
    );
  }

  Future<List<User>> delete(
    _i1.Session session,
    List<User> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<User>(
      rows,
      transaction: transaction,
    );
  }

  Future<User> deleteRow(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<User>(
      row,
      transaction: transaction,
    );
  }

  Future<List<User>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<User>(
      where: where(User.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<User>(
      where: where?.call(User.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class UserAttachRowRepository {
  const UserAttachRowRepository._();

  Future<void> company(
    _i1.Session session,
    User user,
    _i2.Company company,
  ) async {
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }

    var $user = user.copyWith(companyId: company.id);
    await session.db.updateRow<User>(
      $user,
      columns: [User.t.companyId],
    );
  }
}
