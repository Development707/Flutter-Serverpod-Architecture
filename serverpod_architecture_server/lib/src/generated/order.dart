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

abstract class Order extends _i1.TableRow implements _i1.ProtocolSerialization {
  Order._({
    int? id,
    required this.name,
    required this.price,
    required this.itemType,
    required this.userId,
    this.user,
    required this.companyId,
    this.company,
  }) : super(id);

  factory Order({
    int? id,
    required String name,
    required double price,
    required String itemType,
    required int userId,
    _i2.User? user,
    required int companyId,
    _i2.Company? company,
  }) = _OrderImpl;

  factory Order.fromJson(Map<String, dynamic> jsonSerialization) {
    return Order(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      price: (jsonSerialization['price'] as num).toDouble(),
      itemType: jsonSerialization['itemType'] as String,
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      companyId: jsonSerialization['companyId'] as int,
      company: jsonSerialization['company'] == null
          ? null
          : _i2.Company.fromJson(
              (jsonSerialization['company'] as Map<String, dynamic>)),
    );
  }

  static final t = OrderTable();

  static const db = OrderRepository._();

  String name;

  double price;

  String itemType;

  int userId;

  _i2.User? user;

  int companyId;

  _i2.Company? company;

  @override
  _i1.Table get table => t;

  Order copyWith({
    int? id,
    String? name,
    double? price,
    String? itemType,
    int? userId,
    _i2.User? user,
    int? companyId,
    _i2.Company? company,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'price': price,
      'itemType': itemType,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'companyId': companyId,
      if (company != null) 'company': company?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'price': price,
      'itemType': itemType,
      'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
      'companyId': companyId,
      if (company != null) 'company': company?.toJsonForProtocol(),
    };
  }

  static OrderInclude include({
    _i2.UserInclude? user,
    _i2.CompanyInclude? company,
  }) {
    return OrderInclude._(
      user: user,
      company: company,
    );
  }

  static OrderIncludeList includeList({
    _i1.WhereExpressionBuilder<OrderTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OrderTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrderTable>? orderByList,
    OrderInclude? include,
  }) {
    return OrderIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Order.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Order.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _OrderImpl extends Order {
  _OrderImpl({
    int? id,
    required String name,
    required double price,
    required String itemType,
    required int userId,
    _i2.User? user,
    required int companyId,
    _i2.Company? company,
  }) : super._(
          id: id,
          name: name,
          price: price,
          itemType: itemType,
          userId: userId,
          user: user,
          companyId: companyId,
          company: company,
        );

  @override
  Order copyWith({
    Object? id = _Undefined,
    String? name,
    double? price,
    String? itemType,
    int? userId,
    Object? user = _Undefined,
    int? companyId,
    Object? company = _Undefined,
  }) {
    return Order(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      itemType: itemType ?? this.itemType,
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
      companyId: companyId ?? this.companyId,
      company: company is _i2.Company? ? company : this.company?.copyWith(),
    );
  }
}

class OrderTable extends _i1.Table {
  OrderTable({super.tableRelation}) : super(tableName: 'order') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    price = _i1.ColumnDouble(
      'price',
      this,
    );
    itemType = _i1.ColumnString(
      'itemType',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    companyId = _i1.ColumnInt(
      'companyId',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnDouble price;

  late final _i1.ColumnString itemType;

  late final _i1.ColumnInt userId;

  _i2.UserTable? _user;

  late final _i1.ColumnInt companyId;

  _i2.CompanyTable? _company;

  _i2.UserTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Order.t.userId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  _i2.CompanyTable get company {
    if (_company != null) return _company!;
    _company = _i1.createRelationTable(
      relationFieldName: 'company',
      field: Order.t.companyId,
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
        name,
        price,
        itemType,
        userId,
        companyId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    if (relationField == 'company') {
      return company;
    }
    return null;
  }
}

class OrderInclude extends _i1.IncludeObject {
  OrderInclude._({
    _i2.UserInclude? user,
    _i2.CompanyInclude? company,
  }) {
    _user = user;
    _company = company;
  }

  _i2.UserInclude? _user;

  _i2.CompanyInclude? _company;

  @override
  Map<String, _i1.Include?> get includes => {
        'user': _user,
        'company': _company,
      };

  @override
  _i1.Table get table => Order.t;
}

class OrderIncludeList extends _i1.IncludeList {
  OrderIncludeList._({
    _i1.WhereExpressionBuilder<OrderTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Order.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Order.t;
}

class OrderRepository {
  const OrderRepository._();

  final attachRow = const OrderAttachRowRepository._();

  Future<List<Order>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrderTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OrderTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrderTable>? orderByList,
    _i1.Transaction? transaction,
    OrderInclude? include,
  }) async {
    return session.db.find<Order>(
      where: where?.call(Order.t),
      orderBy: orderBy?.call(Order.t),
      orderByList: orderByList?.call(Order.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Order?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrderTable>? where,
    int? offset,
    _i1.OrderByBuilder<OrderTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrderTable>? orderByList,
    _i1.Transaction? transaction,
    OrderInclude? include,
  }) async {
    return session.db.findFirstRow<Order>(
      where: where?.call(Order.t),
      orderBy: orderBy?.call(Order.t),
      orderByList: orderByList?.call(Order.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Order?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    OrderInclude? include,
  }) async {
    return session.db.findById<Order>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Order>> insert(
    _i1.Session session,
    List<Order> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Order>(
      rows,
      transaction: transaction,
    );
  }

  Future<Order> insertRow(
    _i1.Session session,
    Order row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Order>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Order>> update(
    _i1.Session session,
    List<Order> rows, {
    _i1.ColumnSelections<OrderTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Order>(
      rows,
      columns: columns?.call(Order.t),
      transaction: transaction,
    );
  }

  Future<Order> updateRow(
    _i1.Session session,
    Order row, {
    _i1.ColumnSelections<OrderTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Order>(
      row,
      columns: columns?.call(Order.t),
      transaction: transaction,
    );
  }

  Future<List<Order>> delete(
    _i1.Session session,
    List<Order> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Order>(
      rows,
      transaction: transaction,
    );
  }

  Future<Order> deleteRow(
    _i1.Session session,
    Order row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Order>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Order>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<OrderTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Order>(
      where: where(Order.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrderTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Order>(
      where: where?.call(Order.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class OrderAttachRowRepository {
  const OrderAttachRowRepository._();

  Future<void> user(
    _i1.Session session,
    Order order,
    _i2.User user,
  ) async {
    if (order.id == null) {
      throw ArgumentError.notNull('order.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $order = order.copyWith(userId: user.id);
    await session.db.updateRow<Order>(
      $order,
      columns: [Order.t.userId],
    );
  }

  Future<void> company(
    _i1.Session session,
    Order order,
    _i2.Company company,
  ) async {
    if (order.id == null) {
      throw ArgumentError.notNull('order.id');
    }
    if (company.id == null) {
      throw ArgumentError.notNull('company.id');
    }

    var $order = order.copyWith(companyId: company.id);
    await session.db.updateRow<Order>(
      $order,
      columns: [Order.t.companyId],
    );
  }
}
