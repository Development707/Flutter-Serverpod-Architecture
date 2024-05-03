/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Address extends _i1.TableRow {
  Address._({
    int? id,
    required this.street,
  }) : super(id);

  factory Address({
    int? id,
    required String street,
  }) = _AddressImpl;

  factory Address.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Address(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      street:
          serializationManager.deserialize<String>(jsonSerialization['street']),
    );
  }

  static final t = AddressTable();

  static const db = AddressRepository._();

  String street;

  @override
  _i1.Table get table => t;

  Address copyWith({
    int? id,
    String? street,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'street': street,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'street': street,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'street': street,
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
      case 'street':
        street = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Address>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AddressTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Address>(
      where: where != null ? where(Address.t) : null,
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
  static Future<Address?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AddressTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Address>(
      where: where != null ? where(Address.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Address?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Address>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<AddressTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Address>(
      where: where(Address.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Address row, {
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
    Address row, {
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
    Address row, {
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
    _i1.WhereExpressionBuilder<AddressTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Address>(
      where: where != null ? where(Address.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static AddressInclude include() {
    return AddressInclude._();
  }

  static AddressIncludeList includeList({
    _i1.WhereExpressionBuilder<AddressTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AddressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AddressTable>? orderByList,
    AddressInclude? include,
  }) {
    return AddressIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Address.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Address.t),
      include: include,
    );
  }
}

class _Undefined {}

class _AddressImpl extends Address {
  _AddressImpl({
    int? id,
    required String street,
  }) : super._(
          id: id,
          street: street,
        );

  @override
  Address copyWith({
    Object? id = _Undefined,
    String? street,
  }) {
    return Address(
      id: id is int? ? id : this.id,
      street: street ?? this.street,
    );
  }
}

class AddressTable extends _i1.Table {
  AddressTable({super.tableRelation}) : super(tableName: 'address') {
    street = _i1.ColumnString(
      'street',
      this,
    );
  }

  late final _i1.ColumnString street;

  @override
  List<_i1.Column> get columns => [
        id,
        street,
      ];
}

@Deprecated('Use AddressTable.t instead.')
AddressTable tAddress = AddressTable();

class AddressInclude extends _i1.IncludeObject {
  AddressInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Address.t;
}

class AddressIncludeList extends _i1.IncludeList {
  AddressIncludeList._({
    _i1.WhereExpressionBuilder<AddressTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Address.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Address.t;
}

class AddressRepository {
  const AddressRepository._();

  Future<List<Address>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AddressTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AddressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AddressTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Address>(
      where: where?.call(Address.t),
      orderBy: orderBy?.call(Address.t),
      orderByList: orderByList?.call(Address.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Address?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AddressTable>? where,
    int? offset,
    _i1.OrderByBuilder<AddressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AddressTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Address>(
      where: where?.call(Address.t),
      orderBy: orderBy?.call(Address.t),
      orderByList: orderByList?.call(Address.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Address?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Address>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Address>> insert(
    _i1.Session session,
    List<Address> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Address>(
      rows,
      transaction: transaction,
    );
  }

  Future<Address> insertRow(
    _i1.Session session,
    Address row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Address>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Address>> update(
    _i1.Session session,
    List<Address> rows, {
    _i1.ColumnSelections<AddressTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Address>(
      rows,
      columns: columns?.call(Address.t),
      transaction: transaction,
    );
  }

  Future<Address> updateRow(
    _i1.Session session,
    Address row, {
    _i1.ColumnSelections<AddressTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Address>(
      row,
      columns: columns?.call(Address.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Address> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Address>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Address row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Address>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<AddressTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Address>(
      where: where(Address.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AddressTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Address>(
      where: where?.call(Address.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
