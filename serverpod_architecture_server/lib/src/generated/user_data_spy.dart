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

abstract class UserData extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  UserData._({
    int? id,
    required this.name,
    required this.age,
    this.address,
  }) : super(id);

  factory UserData({
    int? id,
    required String name,
    required int age,
    _i2.Address? address,
  }) = _UserDataImpl;

  factory UserData.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserData(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      age: jsonSerialization['age'] as int,
      address: jsonSerialization['address'] == null
          ? null
          : _i2.Address.fromJson(
              (jsonSerialization['address'] as Map<String, dynamic>)),
    );
  }

  static final t = UserDataTable();

  static const db = UserDataRepository._();

  String name;

  int age;

  _i2.Address? address;

  @override
  _i1.Table get table => t;

  UserData copyWith({
    int? id,
    String? name,
    int? age,
    _i2.Address? address,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'age': age,
      if (address != null) 'address': address?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'age': age,
      if (address != null) 'address': address?.toJsonForProtocol(),
    };
  }

  static UserDataInclude include() {
    return UserDataInclude._();
  }

  static UserDataIncludeList includeList({
    _i1.WhereExpressionBuilder<UserDataTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserDataTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserDataTable>? orderByList,
    UserDataInclude? include,
  }) {
    return UserDataIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserData.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(UserData.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserDataImpl extends UserData {
  _UserDataImpl({
    int? id,
    required String name,
    required int age,
    _i2.Address? address,
  }) : super._(
          id: id,
          name: name,
          age: age,
          address: address,
        );

  @override
  UserData copyWith({
    Object? id = _Undefined,
    String? name,
    int? age,
    Object? address = _Undefined,
  }) {
    return UserData(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      age: age ?? this.age,
      address: address is _i2.Address? ? address : this.address?.copyWith(),
    );
  }
}

class UserDataTable extends _i1.Table {
  UserDataTable({super.tableRelation}) : super(tableName: 'user_data') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    age = _i1.ColumnInt(
      'age',
      this,
    );
    address = _i1.ColumnSerializable(
      'address',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnInt age;

  late final _i1.ColumnSerializable address;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        age,
        address,
      ];
}

class UserDataInclude extends _i1.IncludeObject {
  UserDataInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => UserData.t;
}

class UserDataIncludeList extends _i1.IncludeList {
  UserDataIncludeList._({
    _i1.WhereExpressionBuilder<UserDataTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(UserData.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => UserData.t;
}

class UserDataRepository {
  const UserDataRepository._();

  Future<List<UserData>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserDataTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserDataTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserDataTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<UserData>(
      where: where?.call(UserData.t),
      orderBy: orderBy?.call(UserData.t),
      orderByList: orderByList?.call(UserData.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<UserData?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserDataTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserDataTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserDataTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<UserData>(
      where: where?.call(UserData.t),
      orderBy: orderBy?.call(UserData.t),
      orderByList: orderByList?.call(UserData.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<UserData?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<UserData>(
      id,
      transaction: transaction,
    );
  }

  Future<List<UserData>> insert(
    _i1.Session session,
    List<UserData> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<UserData>(
      rows,
      transaction: transaction,
    );
  }

  Future<UserData> insertRow(
    _i1.Session session,
    UserData row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<UserData>(
      row,
      transaction: transaction,
    );
  }

  Future<List<UserData>> update(
    _i1.Session session,
    List<UserData> rows, {
    _i1.ColumnSelections<UserDataTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<UserData>(
      rows,
      columns: columns?.call(UserData.t),
      transaction: transaction,
    );
  }

  Future<UserData> updateRow(
    _i1.Session session,
    UserData row, {
    _i1.ColumnSelections<UserDataTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<UserData>(
      row,
      columns: columns?.call(UserData.t),
      transaction: transaction,
    );
  }

  Future<List<UserData>> delete(
    _i1.Session session,
    List<UserData> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<UserData>(
      rows,
      transaction: transaction,
    );
  }

  Future<UserData> deleteRow(
    _i1.Session session,
    UserData row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<UserData>(
      row,
      transaction: transaction,
    );
  }

  Future<List<UserData>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserDataTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<UserData>(
      where: where(UserData.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserDataTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<UserData>(
      where: where?.call(UserData.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
