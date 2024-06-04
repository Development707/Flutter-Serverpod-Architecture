/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/blocking_endpoint.dart' as _i2;
import '../endpoints/caching_endpoint.dart' as _i3;
import '../endpoints/cat_endpoint.dart' as _i4;
import '../endpoints/company_endpoint.dart' as _i5;
import '../endpoints/example_endpoint.dart' as _i6;
import '../endpoints/pagination_endpoint.dart' as _i7;
import '../endpoints/post_endpoint.dart' as _i8;
import '../endpoints/raw_access_endpoint.dart' as _i9;
import '../endpoints/relation_queries_endpoint.dart' as _i10;
import '../endpoints/sort_endpoint.dart' as _i11;
import '../endpoints/user_endpoint.dart' as _i12;
import 'package:serverpod_architecture_server/src/generated/blocking.dart'
    as _i13;
import 'package:serverpod_architecture_server/src/generated/cat.dart' as _i14;
import 'package:serverpod_architecture_server/src/generated/company.dart'
    as _i15;
import 'package:serverpod_architecture_server/src/generated/post.dart' as _i16;
import 'package:serverpod_architecture_server/src/generated/employee.dart'
    as _i17;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'blocking': _i2.BlockingEndpoint()
        ..initialize(
          server,
          'blocking',
          null,
        ),
      'caching': _i3.CachingEndpoint()
        ..initialize(
          server,
          'caching',
          null,
        ),
      'cat': _i4.CatEndpoint()
        ..initialize(
          server,
          'cat',
          null,
        ),
      'company': _i5.CompanyEndpoint()
        ..initialize(
          server,
          'company',
          null,
        ),
      'example': _i6.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'pagination': _i7.PaginationEndpoint()
        ..initialize(
          server,
          'pagination',
          null,
        ),
      'post': _i8.PostEndpoint()
        ..initialize(
          server,
          'post',
          null,
        ),
      'rawAccess': _i9.RawAccessEndpoint()
        ..initialize(
          server,
          'rawAccess',
          null,
        ),
      'relationQueries': _i10.RelationQueriesEndpoint()
        ..initialize(
          server,
          'relationQueries',
          null,
        ),
      'sort': _i11.SortEndpoint()
        ..initialize(
          server,
          'sort',
          null,
        ),
      'user': _i12.UserEndpoint()
        ..initialize(
          server,
          'user',
          null,
        ),
    };
    connectors['blocking'] = _i1.EndpointConnector(
      name: 'blocking',
      endpoint: endpoints['blocking']!,
      methodConnectors: {
        'getBlockings': _i1.MethodConnector(
          name: 'getBlockings',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['blocking'] as _i2.BlockingEndpoint)
                  .getBlockings(session),
        ),
        'getBlocking': _i1.MethodConnector(
          name: 'getBlocking',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['blocking'] as _i2.BlockingEndpoint).getBlocking(
            session,
            params['id'],
          ),
        ),
        'createBlocking': _i1.MethodConnector(
          name: 'createBlocking',
          params: {
            'blocking': _i1.ParameterDescription(
              name: 'blocking',
              type: _i1.getType<_i13.Blocking>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['blocking'] as _i2.BlockingEndpoint).createBlocking(
            session,
            params['blocking'],
          ),
        ),
        'updateBlocking': _i1.MethodConnector(
          name: 'updateBlocking',
          params: {
            'blocking': _i1.ParameterDescription(
              name: 'blocking',
              type: _i1.getType<_i13.Blocking>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['blocking'] as _i2.BlockingEndpoint).updateBlocking(
            session,
            params['blocking'],
          ),
        ),
        'deleteBlocking': _i1.MethodConnector(
          name: 'deleteBlocking',
          params: {
            'blocking': _i1.ParameterDescription(
              name: 'blocking',
              type: _i1.getType<_i13.Blocking>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['blocking'] as _i2.BlockingEndpoint).deleteBlocking(
            session,
            params['blocking'],
          ),
        ),
      },
    );
    connectors['caching'] = _i1.EndpointConnector(
      name: 'caching',
      endpoint: endpoints['caching']!,
      methodConnectors: {
        'getUserData': _i1.MethodConnector(
          name: 'getUserData',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['caching'] as _i3.CachingEndpoint).getUserData(
            session,
            params['userId'],
          ),
        ),
        'getUserDataMiss': _i1.MethodConnector(
          name: 'getUserDataMiss',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['caching'] as _i3.CachingEndpoint).getUserDataMiss(
            session,
            params['userId'],
          ),
        ),
      },
    );
    connectors['cat'] = _i1.EndpointConnector(
      name: 'cat',
      endpoint: endpoints['cat']!,
      methodConnectors: {
        'getCats': _i1.MethodConnector(
          name: 'getCats',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['cat'] as _i4.CatEndpoint).getCats(session),
        ),
        'getCat': _i1.MethodConnector(
          name: 'getCat',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['cat'] as _i4.CatEndpoint).getCat(
            session,
            params['id'],
          ),
        ),
        'createCat': _i1.MethodConnector(
          name: 'createCat',
          params: {
            'cat': _i1.ParameterDescription(
              name: 'cat',
              type: _i1.getType<_i14.Cat>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['cat'] as _i4.CatEndpoint).createCat(
            session,
            params['cat'],
          ),
        ),
        'updateCat': _i1.MethodConnector(
          name: 'updateCat',
          params: {
            'cat': _i1.ParameterDescription(
              name: 'cat',
              type: _i1.getType<_i14.Cat>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['cat'] as _i4.CatEndpoint).updateCat(
            session,
            params['cat'],
          ),
        ),
        'deleteCat': _i1.MethodConnector(
          name: 'deleteCat',
          params: {
            'cat': _i1.ParameterDescription(
              name: 'cat',
              type: _i1.getType<_i14.Cat>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['cat'] as _i4.CatEndpoint).deleteCat(
            session,
            params['cat'],
          ),
        ),
      },
    );
    connectors['company'] = _i1.EndpointConnector(
      name: 'company',
      endpoint: endpoints['company']!,
      methodConnectors: {
        'getAllCompanies': _i1.MethodConnector(
          name: 'getAllCompanies',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['company'] as _i5.CompanyEndpoint)
                  .getAllCompanies(session),
        ),
        'getCompany': _i1.MethodConnector(
          name: 'getCompany',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['company'] as _i5.CompanyEndpoint).getCompany(
            session,
            params['id'],
          ),
        ),
        'createCompany': _i1.MethodConnector(
          name: 'createCompany',
          params: {
            'company': _i1.ParameterDescription(
              name: 'company',
              type: _i1.getType<_i15.Company>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['company'] as _i5.CompanyEndpoint).createCompany(
            session,
            params['company'],
          ),
        ),
        'updateCompany': _i1.MethodConnector(
          name: 'updateCompany',
          params: {
            'company': _i1.ParameterDescription(
              name: 'company',
              type: _i1.getType<_i15.Company>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['company'] as _i5.CompanyEndpoint).updateCompany(
            session,
            params['company'],
          ),
        ),
        'deleteCompany': _i1.MethodConnector(
          name: 'deleteCompany',
          params: {
            'company': _i1.ParameterDescription(
              name: 'company',
              type: _i1.getType<_i15.Company>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['company'] as _i5.CompanyEndpoint).deleteCompany(
            session,
            params['company'],
          ),
        ),
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i6.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        ),
        'getCustomClass': _i1.MethodConnector(
          name: 'getCustomClass',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i6.ExampleEndpoint)
                  .getCustomClass(session),
        ),
        'getFreezedCustomClass': _i1.MethodConnector(
          name: 'getFreezedCustomClass',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i6.ExampleEndpoint)
                  .getFreezedCustomClass(session),
        ),
        'doThingy': _i1.MethodConnector(
          name: 'doThingy',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i6.ExampleEndpoint).doThingy(session),
        ),
        'getRemoteIpAddress': _i1.MethodConnector(
          name: 'getRemoteIpAddress',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i6.ExampleEndpoint)
                  .getRemoteIpAddress(session),
        ),
      },
    );
    connectors['pagination'] = _i1.EndpointConnector(
      name: 'pagination',
      endpoint: endpoints['pagination']!,
      methodConnectors: {
        'limit': _i1.MethodConnector(
          name: 'limit',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['pagination'] as _i7.PaginationEndpoint)
                  .limit(session),
        ),
        'offset': _i1.MethodConnector(
          name: 'offset',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['pagination'] as _i7.PaginationEndpoint)
                  .offset(session),
        ),
        'pagination': _i1.MethodConnector(
          name: 'pagination',
          params: {
            'page': _i1.ParameterDescription(
              name: 'page',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'perPage': _i1.ParameterDescription(
              name: 'perPage',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['pagination'] as _i7.PaginationEndpoint).pagination(
            session,
            params['page'],
            params['perPage'],
          ),
        ),
        'paginationCursor': _i1.MethodConnector(
          name: 'paginationCursor',
          params: {
            'cursor': _i1.ParameterDescription(
              name: 'cursor',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
            'perPage': _i1.ParameterDescription(
              name: 'perPage',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['pagination'] as _i7.PaginationEndpoint)
                  .paginationCursor(
            session,
            cursor: params['cursor'],
            perPage: params['perPage'],
          ),
        ),
      },
    );
    connectors['post'] = _i1.EndpointConnector(
      name: 'post',
      endpoint: endpoints['post']!,
      methodConnectors: {
        'createPost': _i1.MethodConnector(
          name: 'createPost',
          params: {
            'post': _i1.ParameterDescription(
              name: 'post',
              type: _i1.getType<_i16.Post>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i8.PostEndpoint).createPost(
            session,
            params['post'],
          ),
        ),
        'getPost': _i1.MethodConnector(
          name: 'getPost',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i8.PostEndpoint).getPost(
            session,
            params['id'],
          ),
        ),
        'getPosts': _i1.MethodConnector(
          name: 'getPosts',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i8.PostEndpoint).getPosts(session),
        ),
        'updatePost': _i1.MethodConnector(
          name: 'updatePost',
          params: {
            'post': _i1.ParameterDescription(
              name: 'post',
              type: _i1.getType<_i16.Post>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i8.PostEndpoint).updatePost(
            session,
            params['post'],
          ),
        ),
        'deletePost': _i1.MethodConnector(
          name: 'deletePost',
          params: {
            'post': _i1.ParameterDescription(
              name: 'post',
              type: _i1.getType<_i16.Post>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i8.PostEndpoint).deletePost(
            session,
            params['post'],
          ),
        ),
      },
    );
    connectors['rawAccess'] = _i1.EndpointConnector(
      name: 'rawAccess',
      endpoint: endpoints['rawAccess']!,
      methodConnectors: {
        'unsafeQuery': _i1.MethodConnector(
          name: 'unsafeQuery',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['rawAccess'] as _i9.RawAccessEndpoint)
                  .unsafeQuery(session),
        ),
        'unsafeExecute': _i1.MethodConnector(
          name: 'unsafeExecute',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['rawAccess'] as _i9.RawAccessEndpoint).unsafeExecute(
            session,
            params['name'],
          ),
        ),
      },
    );
    connectors['relationQueries'] = _i1.EndpointConnector(
      name: 'relationQueries',
      endpoint: endpoints['relationQueries']!,
      methodConnectors: {
        'include': _i1.MethodConnector(
          name: 'include',
          params: {
            'employeeId': _i1.ParameterDescription(
              name: 'employeeId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['relationQueries'] as _i10.RelationQueriesEndpoint)
                  .include(
            session,
            params['employeeId'],
          ),
        ),
        'nestedInclude': _i1.MethodConnector(
          name: 'nestedInclude',
          params: {
            'employeeId': _i1.ParameterDescription(
              name: 'employeeId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['relationQueries'] as _i10.RelationQueriesEndpoint)
                  .nestedInclude(
            session,
            params['employeeId'],
          ),
        ),
        'includeLists': _i1.MethodConnector(
          name: 'includeLists',
          params: {
            'employeeId': _i1.ParameterDescription(
              name: 'employeeId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['relationQueries'] as _i10.RelationQueriesEndpoint)
                  .includeLists(
            session,
            params['employeeId'],
          ),
        ),
        'nestedIncludeLists': _i1.MethodConnector(
          name: 'nestedIncludeLists',
          params: {
            'employeeId': _i1.ParameterDescription(
              name: 'employeeId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['relationQueries'] as _i10.RelationQueriesEndpoint)
                  .nestedIncludeLists(
            session,
            params['employeeId'],
          ),
        ),
        'filter': _i1.MethodConnector(
          name: 'filter',
          params: {
            'employeeId': _i1.ParameterDescription(
              name: 'employeeId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['relationQueries'] as _i10.RelationQueriesEndpoint)
                  .filter(
            session,
            params['employeeId'],
          ),
        ),
        'sort': _i1.MethodConnector(
          name: 'sort',
          params: {
            'employeeId': _i1.ParameterDescription(
              name: 'employeeId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['relationQueries'] as _i10.RelationQueriesEndpoint)
                  .sort(
            session,
            params['employeeId'],
          ),
        ),
        'pagination': _i1.MethodConnector(
          name: 'pagination',
          params: {
            'employeeId': _i1.ParameterDescription(
              name: 'employeeId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['relationQueries'] as _i10.RelationQueriesEndpoint)
                  .pagination(
            session,
            params['employeeId'],
          ),
        ),
        'attachSingleRow': _i1.MethodConnector(
          name: 'attachSingleRow',
          params: {
            'employeeId': _i1.ParameterDescription(
              name: 'employeeId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'companyId': _i1.ParameterDescription(
              name: 'companyId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['relationQueries'] as _i10.RelationQueriesEndpoint)
                  .attachSingleRow(
            session,
            params['employeeId'],
            params['companyId'],
          ),
        ),
        'bulkAttachRows': _i1.MethodConnector(
          name: 'bulkAttachRows',
          params: {
            'employeeId': _i1.ParameterDescription(
              name: 'employeeId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'companyId': _i1.ParameterDescription(
              name: 'companyId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['relationQueries'] as _i10.RelationQueriesEndpoint)
                  .bulkAttachRows(
            session,
            params['employeeId'],
            params['companyId'],
          ),
        ),
        'detachSingleRow': _i1.MethodConnector(
          name: 'detachSingleRow',
          params: {
            'employeeId': _i1.ParameterDescription(
              name: 'employeeId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['relationQueries'] as _i10.RelationQueriesEndpoint)
                  .detachSingleRow(
            session,
            params['employeeId'],
          ),
        ),
        'bulkDetachRows': _i1.MethodConnector(
          name: 'bulkDetachRows',
          params: {
            'employeeId': _i1.ParameterDescription(
              name: 'employeeId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['relationQueries'] as _i10.RelationQueriesEndpoint)
                  .bulkDetachRows(
            session,
            params['employeeId'],
          ),
        ),
        'transaction': _i1.MethodConnector(
          name: 'transaction',
          params: {
            'employee': _i1.ParameterDescription(
              name: 'employee',
              type: _i1.getType<_i17.Employee>(),
              nullable: false,
            ),
            'company': _i1.ParameterDescription(
              name: 'company',
              type: _i1.getType<_i15.Company>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['relationQueries'] as _i10.RelationQueriesEndpoint)
                  .transaction(
            session,
            params['employee'],
            params['company'],
          ),
        ),
      },
    );
    connectors['sort'] = _i1.EndpointConnector(
      name: 'sort',
      endpoint: endpoints['sort']!,
      methodConnectors: {
        'orderBy': _i1.MethodConnector(
          name: 'orderBy',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sort'] as _i11.SortEndpoint).orderBy(session),
        ),
        'orderDescending': _i1.MethodConnector(
          name: 'orderDescending',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sort'] as _i11.SortEndpoint).orderDescending(session),
        ),
        'orderByList': _i1.MethodConnector(
          name: 'orderByList',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sort'] as _i11.SortEndpoint).orderByList(session),
        ),
        'sort': _i1.MethodConnector(
          name: 'sort',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sort'] as _i11.SortEndpoint).sort(session),
        ),
        'sortCount': _i1.MethodConnector(
          name: 'sortCount',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sort'] as _i11.SortEndpoint).sortCount(session),
        ),
      },
    );
    connectors['user'] = _i1.EndpointConnector(
      name: 'user',
      endpoint: endpoints['user']!,
      methodConnectors: {
        'find': _i1.MethodConnector(
          name: 'find',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i12.UserEndpoint).find(session),
        ),
        'equal': _i1.MethodConnector(
          name: 'equal',
          params: {
            'value': _i1.ParameterDescription(
              name: 'value',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i12.UserEndpoint).equal(
            session,
            params['value'],
          ),
        ),
        'notEqual': _i1.MethodConnector(
          name: 'notEqual',
          params: {
            'value': _i1.ParameterDescription(
              name: 'value',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i12.UserEndpoint).notEqual(
            session,
            params['value'],
          ),
        ),
        'operators': _i1.MethodConnector(
          name: 'operators',
          params: {
            'value': _i1.ParameterDescription(
              name: 'value',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i12.UserEndpoint).operators(
            session,
            params['value'],
          ),
        ),
        'between': _i1.MethodConnector(
          name: 'between',
          params: {
            'min': _i1.ParameterDescription(
              name: 'min',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'max': _i1.ParameterDescription(
              name: 'max',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i12.UserEndpoint).between(
            session,
            params['min'],
            params['max'],
          ),
        ),
        'notBetween': _i1.MethodConnector(
          name: 'notBetween',
          params: {
            'min': _i1.ParameterDescription(
              name: 'min',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'max': _i1.ParameterDescription(
              name: 'max',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i12.UserEndpoint).notBetween(
            session,
            params['min'],
            params['max'],
          ),
        ),
        'inSet': _i1.MethodConnector(
          name: 'inSet',
          params: {
            'values': _i1.ParameterDescription(
              name: 'values',
              type: _i1.getType<Set<String>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i12.UserEndpoint).inSet(
            session,
            params['values'],
          ),
        ),
        'notInSet': _i1.MethodConnector(
          name: 'notInSet',
          params: {
            'values': _i1.ParameterDescription(
              name: 'values',
              type: _i1.getType<Set<String>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i12.UserEndpoint).notInSet(
            session,
            params['values'],
          ),
        ),
        'like': _i1.MethodConnector(
          name: 'like',
          params: {
            'value': _i1.ParameterDescription(
              name: 'value',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i12.UserEndpoint).like(
            session,
            params['value'],
          ),
        ),
        'notLike': _i1.MethodConnector(
          name: 'notLike',
          params: {
            'value': _i1.ParameterDescription(
              name: 'value',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i12.UserEndpoint).notLike(
            session,
            params['value'],
          ),
        ),
        'iLike': _i1.MethodConnector(
          name: 'iLike',
          params: {
            'value': _i1.ParameterDescription(
              name: 'value',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i12.UserEndpoint).iLike(
            session,
            params['value'],
          ),
        ),
        'notILike': _i1.MethodConnector(
          name: 'notILike',
          params: {
            'value': _i1.ParameterDescription(
              name: 'value',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i12.UserEndpoint).notILike(
            session,
            params['value'],
          ),
        ),
        'logicalOperators': _i1.MethodConnector(
          name: 'logicalOperators',
          params: {
            'value': _i1.ParameterDescription(
              name: 'value',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i12.UserEndpoint).logicalOperators(
            session,
            params['value'],
          ),
        ),
        'oneToOne': _i1.MethodConnector(
          name: 'oneToOne',
          params: {
            'value': _i1.ParameterDescription(
              name: 'value',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i12.UserEndpoint).oneToOne(
            session,
            params['value'],
          ),
        ),
        'oneToMany': _i1.MethodConnector(
          name: 'oneToMany',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i12.UserEndpoint).oneToMany(
            session,
            params['id'],
          ),
        ),
        'none': _i1.MethodConnector(
          name: 'none',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i12.UserEndpoint).none(
            session,
            params['id'],
          ),
        ),
        'any': _i1.MethodConnector(
          name: 'any',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i12.UserEndpoint).any(
            session,
            params['id'],
          ),
        ),
        'every': _i1.MethodConnector(
          name: 'every',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i12.UserEndpoint).every(
            session,
            params['id'],
          ),
        ),
      },
    );
  }
}
