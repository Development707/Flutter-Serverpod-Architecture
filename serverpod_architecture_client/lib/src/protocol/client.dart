/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:serverpod_architecture_client/src/protocol/blocking.dart'
    as _i3;
import 'package:serverpod_architecture_client/src/protocol/user_data_spy.dart'
    as _i4;
import 'package:serverpod_architecture_client/src/protocol/cat.dart' as _i5;
import 'package:serverpod_architecture_client/src/protocol/company.dart' as _i6;
import 'package:serverpod_architecture_shared/src/class_name.dart' as _i7;
import 'package:serverpod_architecture_shared/src/freezed_custom_class.dart'
    as _i8;
import 'package:serverpod_architecture_client/src/protocol/post.dart' as _i9;
import 'package:serverpod_architecture_client/src/protocol/employee.dart'
    as _i10;
import 'package:serverpod_architecture_client/src/protocol/user.dart' as _i11;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i12;
import 'protocol.dart' as _i13;

/// CRUD endpoint for handling all operations on `Blocking` objects.
/// {@category Endpoint}
class EndpointBlocking extends _i1.EndpointRef {
  EndpointBlocking(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'blocking';

  /// Retrieves all `Blocking`s.
  _i2.Future<List<_i3.Blocking>> getBlockings() =>
      caller.callServerEndpoint<List<_i3.Blocking>>(
        'blocking',
        'getBlockings',
        {},
      );

  /// Retrieves a `Blocking` by its id.
  _i2.Future<_i3.Blocking?> getBlocking(int id) =>
      caller.callServerEndpoint<_i3.Blocking?>(
        'blocking',
        'getBlocking',
        {'id': id},
      );

  /// Creates a new `Blocking`.
  _i2.Future<_i3.Blocking> createBlocking(_i3.Blocking blocking) =>
      caller.callServerEndpoint<_i3.Blocking>(
        'blocking',
        'createBlocking',
        {'blocking': blocking},
      );

  /// Updates a `Blocking`.
  _i2.Future<_i3.Blocking> updateBlocking(_i3.Blocking blocking) =>
      caller.callServerEndpoint<_i3.Blocking>(
        'blocking',
        'updateBlocking',
        {'blocking': blocking},
      );

  /// Deletes a `Blocking`.
  _i2.Future<void> deleteBlocking(_i3.Blocking blocking) =>
      caller.callServerEndpoint<void>(
        'blocking',
        'deleteBlocking',
        {'blocking': blocking},
      );
}

/// {@category Endpoint}
class EndpointCaching extends _i1.EndpointRef {
  EndpointCaching(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'caching';

  _i2.Future<_i4.UserData> getUserData(int userId) =>
      caller.callServerEndpoint<_i4.UserData>(
        'caching',
        'getUserData',
        {'userId': userId},
      );

  /// Cache miss handler
  _i2.Future<_i4.UserData?> getUserDataMiss(int userId) =>
      caller.callServerEndpoint<_i4.UserData?>(
        'caching',
        'getUserDataMiss',
        {'userId': userId},
      );
}

/// CRUD endpoint for handling all operations on `Cat` objects.
/// {@category Endpoint}
class EndpointCat extends _i1.EndpointRef {
  EndpointCat(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'cat';

  /// Retrieves a list of [Cat] objects from the database using the provided [session].
  ///
  /// Parameters:
  /// - [session]: The [Session] object used to access the database.
  ///
  /// Returns:
  /// - A [Future] that resolves to a list of [Cat] objects.
  _i2.Future<List<_i5.Cat>> getCats() =>
      caller.callServerEndpoint<List<_i5.Cat>>(
        'cat',
        'getCats',
        {},
      );

  /// Retrieves a single [Cat] object from the database using the provided [session] and [id].
  _i2.Future<_i5.Cat?> getCat(int id) => caller.callServerEndpoint<_i5.Cat?>(
        'cat',
        'getCat',
        {'id': id},
      );

  /// Creates a new [Cat] object in the database using the provided [session] and [cat].
  ///
  /// Parameters:
  /// - [session]: The [Session] object used to access the database.
  /// - [cat]: The [Cat] object to be inserted into the database.
  ///
  /// Returns:
  /// - A [Future] that resolves to the created [Cat] object.
  _i2.Future<_i5.Cat> createCat(_i5.Cat cat) =>
      caller.callServerEndpoint<_i5.Cat>(
        'cat',
        'createCat',
        {'cat': cat},
      );

  /// Updates a [Cat] object in the database using the provided [session] and [cat].
  ///
  /// Parameters:
  /// - [session]: The [Session] object used to access the database.
  /// - [cat]: The [Cat] object to be updated in the database.
  ///
  /// Returns:
  /// - A [Future] that resolves to the updated [Cat] object.
  _i2.Future<_i5.Cat> updateCat(_i5.Cat cat) =>
      caller.callServerEndpoint<_i5.Cat>(
        'cat',
        'updateCat',
        {'cat': cat},
      );

  /// Deletes a [Cat] object from the database using the provided [session] and [cat].
  ///
  /// Parameters:
  /// - [session]: The [Session] object used to access the database.
  /// - [cat]: The [Cat] object to be deleted from the database.
  ///
  /// Returns:
  /// - A [Future] that resolves to `void`.
  _i2.Future<void> deleteCat(_i5.Cat cat) => caller.callServerEndpoint<void>(
        'cat',
        'deleteCat',
        {'cat': cat},
      );
}

/// {@category Endpoint}
class EndpointCompany extends _i1.EndpointRef {
  EndpointCompany(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'company';

  _i2.Future<List<_i6.Company>> getAllCompanies() =>
      caller.callServerEndpoint<List<_i6.Company>>(
        'company',
        'getAllCompanies',
        {},
      );

  _i2.Future<_i6.Company?> getCompany(int id) =>
      caller.callServerEndpoint<_i6.Company?>(
        'company',
        'getCompany',
        {'id': id},
      );

  _i2.Future<_i6.Company> createCompany(_i6.Company company) =>
      caller.callServerEndpoint<_i6.Company>(
        'company',
        'createCompany',
        {'company': company},
      );

  _i2.Future<_i6.Company> updateCompany(_i6.Company company) =>
      caller.callServerEndpoint<_i6.Company>(
        'company',
        'updateCompany',
        {'company': company},
      );

  _i2.Future<_i6.Company> deleteCompany(_i6.Company company) =>
      caller.callServerEndpoint<_i6.Company>(
        'company',
        'deleteCompany',
        {'company': company},
      );
}

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );

  _i2.Future<_i7.ClassName> getCustomClass() =>
      caller.callServerEndpoint<_i7.ClassName>(
        'example',
        'getCustomClass',
        {},
      );

  _i2.Future<_i8.FreezedCustomClass> getFreezedCustomClass() =>
      caller.callServerEndpoint<_i8.FreezedCustomClass>(
        'example',
        'getFreezedCustomClass',
        {},
      );

  _i2.Future<void> doThingy() => caller.callServerEndpoint<void>(
        'example',
        'doThingy',
        {},
      );

  _i2.Future<String> getRemoteIpAddress() => caller.callServerEndpoint<String>(
        'example',
        'getRemoteIpAddress',
        {},
      );
}

/// {@category Endpoint}
class EndpointPagination extends _i1.EndpointRef {
  EndpointPagination(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'pagination';

  /// Limit
  _i2.Future<List<_i6.Company>> limit() =>
      caller.callServerEndpoint<List<_i6.Company>>(
        'pagination',
        'limit',
        {},
      );

  /// Offset
  _i2.Future<List<_i6.Company>> offset() =>
      caller.callServerEndpoint<List<_i6.Company>>(
        'pagination',
        'offset',
        {},
      );

  /// Using Limit and Offset for Pagination
  _i2.Future<List<_i6.Company>> pagination(
    int page,
    int perPage,
  ) =>
      caller.callServerEndpoint<List<_i6.Company>>(
        'pagination',
        'pagination',
        {
          'page': page,
          'perPage': perPage,
        },
      );

  /// Using Cursor-based for Pagination
  _i2.Future<Map<String, dynamic>> paginationCursor({
    int? cursor,
    required int perPage,
  }) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'pagination',
        'paginationCursor',
        {
          'cursor': cursor,
          'perPage': perPage,
        },
      );
}

/// CRUD endpoint for handling all operations on `Post` objects.
/// {@category Endpoint}
class EndpointPost extends _i1.EndpointRef {
  EndpointPost(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'post';

  /// Creates a new post in the database.
  ///
  /// The [session] parameter is the session object representing the current user session.
  /// The [post] parameter is the post object to be inserted into the database.
  ///
  /// Returns a `Future` that resolves to the inserted post object.
  _i2.Future<_i9.Post> createPost(_i9.Post post) =>
      caller.callServerEndpoint<_i9.Post>(
        'post',
        'createPost',
        {'post': post},
      );

  /// Retrieves a single [Post] object from the database using the provided [session] and [id].
  ///
  /// The [session] parameter is the session object representing the current user session.
  /// The [id] parameter is the ID of the post to be retrieved.
  ///
  /// Returns a `Future` that resolves to the retrieved [Post] object, or `null` if no post with the given ID exists.
  _i2.Future<_i9.Post?> getPost(int id) => caller.callServerEndpoint<_i9.Post?>(
        'post',
        'getPost',
        {'id': id},
      );

  /// Retrieves a list of [Post] objects from the database using the provided [session].
  ///
  /// Parameters:
  ///   - [session]: The [Session] object used to access the database.
  ///
  /// Returns:
  ///   - A [Future] that resolves to a list of [Post] objects.
  _i2.Future<List<_i9.Post>> getPosts() =>
      caller.callServerEndpoint<List<_i9.Post>>(
        'post',
        'getPosts',
        {},
      );

  /// Updates a [Post] object in the database using the provided [session] and [post].
  ///
  /// The [session] parameter is the session object representing the current user session.
  /// The [post] parameter is the post object to be updated in the database.
  ///
  /// This function returns a `Future` that resolves when the update is complete.
  _i2.Future<void> updatePost(_i9.Post post) => caller.callServerEndpoint<void>(
        'post',
        'updatePost',
        {'post': post},
      );

  /// Deletes a [Post] object from the database using the provided [session] and [post].
  ///
  /// The [session] parameter is the session object representing the current user session.
  /// The [post] parameter is the post object to be deleted from the database.
  ///
  /// Returns a `Future` that resolves to `void`.
  _i2.Future<void> deletePost(_i9.Post post) => caller.callServerEndpoint<void>(
        'post',
        'deletePost',
        {'post': post},
      );
}

/// {@category Endpoint}
class EndpointRawAccess extends _i1.EndpointRef {
  EndpointRawAccess(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'rawAccess';

  _i2.Future<List<_i6.Company>> unsafeQuery() =>
      caller.callServerEndpoint<List<_i6.Company>>(
        'rawAccess',
        'unsafeQuery',
        {},
      );

  _i2.Future<int> unsafeExecute(String name) => caller.callServerEndpoint<int>(
        'rawAccess',
        'unsafeExecute',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointRelationQueries extends _i1.EndpointRef {
  EndpointRelationQueries(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'relationQueries';

  /// Include relational data
  _i2.Future<_i10.Employee?> include(int employeeId) =>
      caller.callServerEndpoint<_i10.Employee?>(
        'relationQueries',
        'include',
        {'employeeId': employeeId},
      );

  /// Nested includes
  _i2.Future<_i10.Employee?> nestedInclude(int employeeId) =>
      caller.callServerEndpoint<_i10.Employee?>(
        'relationQueries',
        'nestedInclude',
        {'employeeId': employeeId},
      );

  /// Include relational lists
  _i2.Future<_i6.Company?> includeLists(int employeeId) =>
      caller.callServerEndpoint<_i6.Company?>(
        'relationQueries',
        'includeLists',
        {'employeeId': employeeId},
      );

  /// Nested includes
  _i2.Future<_i6.Company?> nestedIncludeLists(int employeeId) =>
      caller.callServerEndpoint<_i6.Company?>(
        'relationQueries',
        'nestedIncludeLists',
        {'employeeId': employeeId},
      );

  /// Filter
  _i2.Future<_i6.Company?> filter(int employeeId) =>
      caller.callServerEndpoint<_i6.Company?>(
        'relationQueries',
        'filter',
        {'employeeId': employeeId},
      );

  /// Sort
  _i2.Future<_i6.Company?> sort(int employeeId) =>
      caller.callServerEndpoint<_i6.Company?>(
        'relationQueries',
        'sort',
        {'employeeId': employeeId},
      );

  /// Pagination
  _i2.Future<_i6.Company?> pagination(int employeeId) =>
      caller.callServerEndpoint<_i6.Company?>(
        'relationQueries',
        'pagination',
        {'employeeId': employeeId},
      );

  /// Attach Single Row.
  /// Link an individual employee to a company.
  _i2.Future<void> attachSingleRow(
    int employeeId,
    int companyId,
  ) =>
      caller.callServerEndpoint<void>(
        'relationQueries',
        'attachSingleRow',
        {
          'employeeId': employeeId,
          'companyId': companyId,
        },
      );

  /// Bulk Attach Rows.
  /// For scenarios where you need to associate multiple employees with
  /// a company at once, use the bulk attach method.
  _i2.Future<void> bulkAttachRows(
    int employeeId,
    int companyId,
  ) =>
      caller.callServerEndpoint<void>(
        'relationQueries',
        'bulkAttachRows',
        {
          'employeeId': employeeId,
          'companyId': companyId,
        },
      );

  /// Detach Single Row.
  /// To remove the association between an employee and a company.
  _i2.Future<void> detachSingleRow(int employeeId) =>
      caller.callServerEndpoint<void>(
        'relationQueries',
        'detachSingleRow',
        {'employeeId': employeeId},
      );

  /// Bulk Detach Rows.
  /// In cases where you need to remove associations for multiple employees
  /// simultaneously, use the bulk detach method.
  _i2.Future<void> bulkDetachRows(int employeeId) =>
      caller.callServerEndpoint<void>(
        'relationQueries',
        'bulkDetachRows',
        {'employeeId': employeeId},
      );

  /// Transactions
  _i2.Future<bool> transaction(
    _i10.Employee employee,
    _i6.Company company,
  ) =>
      caller.callServerEndpoint<bool>(
        'relationQueries',
        'transaction',
        {
          'employee': employee,
          'company': company,
        },
      );
}

/// {@category Endpoint}
class EndpointSort extends _i1.EndpointRef {
  EndpointSort(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'sort';

  /// orderBy
  _i2.Future<List<_i6.Company>> orderBy() =>
      caller.callServerEndpoint<List<_i6.Company>>(
        'sort',
        'orderBy',
        {},
      );

  /// orderDescending
  _i2.Future<List<_i6.Company>> orderDescending() =>
      caller.callServerEndpoint<List<_i6.Company>>(
        'sort',
        'orderDescending',
        {},
      );

  /// orderByList
  _i2.Future<List<_i6.Company>> orderByList() =>
      caller.callServerEndpoint<List<_i6.Company>>(
        'sort',
        'orderByList',
        {},
      );

  /// Sort on relations
  _i2.Future<List<_i6.Company>> sort() =>
      caller.callServerEndpoint<List<_i6.Company>>(
        'sort',
        'sort',
        {},
      );

  /// Sort count sub-field
  _i2.Future<List<_i6.Company>> sortCount() =>
      caller.callServerEndpoint<List<_i6.Company>>(
        'sort',
        'sortCount',
        {},
      );
}

/// {@category Endpoint}
class EndpointUser extends _i1.EndpointRef {
  EndpointUser(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'user';

  /// Retrieves a list of all users in the database.
  _i2.Future<List<_i11.User>> find() =>
      caller.callServerEndpoint<List<_i11.User>>(
        'user',
        'find',
        {},
      );

  /// Retrieves a list of all users in the database that have the given name.
  _i2.Future<List<_i11.User>> equal(String value) =>
      caller.callServerEndpoint<List<_i11.User>>(
        'user',
        'equal',
        {'value': value},
      );

  /// Retrieves a list of all users in the database that do not have the given name.
  _i2.Future<List<_i11.User>> notEqual(String value) =>
      caller.callServerEndpoint<List<_i11.User>>(
        'user',
        'notEqual',
        {'value': value},
      );

  /// Retrieves a list of all users in the database that have the given age.
  _i2.Future<List<_i11.User>> operators(int value) =>
      caller.callServerEndpoint<List<_i11.User>>(
        'user',
        'operators',
        {'value': value},
      );

  /// Retrieves a list of all users in the database that
  _i2.Future<List<_i11.User>> between(
    int min,
    int max,
  ) =>
      caller.callServerEndpoint<List<_i11.User>>(
        'user',
        'between',
        {
          'min': min,
          'max': max,
        },
      );

  /// Retrieves a list of all users in the database that do not have the given age.
  _i2.Future<List<_i11.User>> notBetween(
    int min,
    int max,
  ) =>
      caller.callServerEndpoint<List<_i11.User>>(
        'user',
        'notBetween',
        {
          'min': min,
          'max': max,
        },
      );

  /// Retrieves a list of all users in the database that have the given name.
  _i2.Future<List<_i11.User>> inSet(Set<String> values) =>
      caller.callServerEndpoint<List<_i11.User>>(
        'user',
        'inSet',
        {'values': values},
      );

  /// Retrieves a list of all users in the database that do not have the given name.
  _i2.Future<List<_i11.User>> notInSet(Set<String> values) =>
      caller.callServerEndpoint<List<_i11.User>>(
        'user',
        'notInSet',
        {'values': values},
      );

  /// Retrieves a list of all users in the database that have the given name.
  _i2.Future<List<_i11.User>> like(String value) =>
      caller.callServerEndpoint<List<_i11.User>>(
        'user',
        'like',
        {'value': value},
      );

  /// Retrieves a list of all users in the database that do not have the given name.
  _i2.Future<List<_i11.User>> notLike(String value) =>
      caller.callServerEndpoint<List<_i11.User>>(
        'user',
        'notLike',
        {'value': value},
      );

  /// Retrieves a list of all users in the database that have the given name.
  _i2.Future<List<_i11.User>> iLike(String value) =>
      caller.callServerEndpoint<List<_i11.User>>(
        'user',
        'iLike',
        {'value': value},
      );

  /// Retrieves a list of all users in the database that do not have the given name.
  _i2.Future<List<_i11.User>> notILike(String value) =>
      caller.callServerEndpoint<List<_i11.User>>(
        'user',
        'notILike',
        {'value': value},
      );

  /// Retrieves a list of all users in the database that have the given name.
  ///
  /// * The `&` operator is used to chain two statements together with an `and` operation.
  /// * The `|` operator is used to chain two statements together with an `or` operation.
  _i2.Future<List<_i11.User>> logicalOperators(String value) =>
      caller.callServerEndpoint<List<_i11.User>>(
        'user',
        'logicalOperators',
        {'value': value},
      );

  /// One-to-one relationships
  _i2.Future<List<_i11.User>> oneToOne(int value) =>
      caller.callServerEndpoint<List<_i11.User>>(
        'user',
        'oneToOne',
        {'value': value},
      );

  /// One-to-many relationships
  _i2.Future<List<_i11.User>> oneToMany(int id) =>
      caller.callServerEndpoint<List<_i11.User>>(
        'user',
        'oneToMany',
        {'id': id},
      );

  /// None relationships
  _i2.Future<List<_i11.User>> none(int id) =>
      caller.callServerEndpoint<List<_i11.User>>(
        'user',
        'none',
        {'id': id},
      );

  /// Any relationships
  _i2.Future<List<_i11.User>> any(int id) =>
      caller.callServerEndpoint<List<_i11.User>>(
        'user',
        'any',
        {'id': id},
      );

  /// Every relationships
  _i2.Future<List<_i11.User>> every(int id) =>
      caller.callServerEndpoint<List<_i11.User>>(
        'user',
        'every',
        {'id': id},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i12.Caller(client);
  }

  late final _i12.Caller auth;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
  }) : super(
          host,
          _i13.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
        ) {
    blocking = EndpointBlocking(this);
    caching = EndpointCaching(this);
    cat = EndpointCat(this);
    company = EndpointCompany(this);
    example = EndpointExample(this);
    pagination = EndpointPagination(this);
    post = EndpointPost(this);
    rawAccess = EndpointRawAccess(this);
    relationQueries = EndpointRelationQueries(this);
    sort = EndpointSort(this);
    user = EndpointUser(this);
    modules = _Modules(this);
  }

  late final EndpointBlocking blocking;

  late final EndpointCaching caching;

  late final EndpointCat cat;

  late final EndpointCompany company;

  late final EndpointExample example;

  late final EndpointPagination pagination;

  late final EndpointPost post;

  late final EndpointRawAccess rawAccess;

  late final EndpointRelationQueries relationQueries;

  late final EndpointSort sort;

  late final EndpointUser user;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'blocking': blocking,
        'caching': caching,
        'cat': cat,
        'company': company,
        'example': example,
        'pagination': pagination,
        'post': post,
        'rawAccess': rawAccess,
        'relationQueries': relationQueries,
        'sort': sort,
        'user': user,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
