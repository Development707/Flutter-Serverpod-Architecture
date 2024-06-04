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
import '../endpoints/cat_endpoint.dart' as _i3;
import '../endpoints/company_endpoint.dart' as _i4;
import '../endpoints/example_endpoint.dart' as _i5;
import '../endpoints/post_endpoint.dart' as _i6;
import '../endpoints/user_endpoint.dart' as _i7;
import 'package:serverpod_architecture_server/src/generated/blocking.dart'
    as _i8;
import 'package:serverpod_architecture_server/src/generated/cat.dart' as _i9;
import 'package:serverpod_architecture_server/src/generated/company.dart'
    as _i10;
import 'package:serverpod_architecture_server/src/generated/post.dart' as _i11;

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
      'cat': _i3.CatEndpoint()
        ..initialize(
          server,
          'cat',
          null,
        ),
      'company': _i4.CompanyEndpoint()
        ..initialize(
          server,
          'company',
          null,
        ),
      'example': _i5.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'post': _i6.PostEndpoint()
        ..initialize(
          server,
          'post',
          null,
        ),
      'user': _i7.UserEndpoint()
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
              type: _i1.getType<_i8.Blocking>(),
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
              type: _i1.getType<_i8.Blocking>(),
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
              type: _i1.getType<_i8.Blocking>(),
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
              (endpoints['cat'] as _i3.CatEndpoint).getCats(session),
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
              (endpoints['cat'] as _i3.CatEndpoint).getCat(
            session,
            params['id'],
          ),
        ),
        'createCat': _i1.MethodConnector(
          name: 'createCat',
          params: {
            'cat': _i1.ParameterDescription(
              name: 'cat',
              type: _i1.getType<_i9.Cat>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['cat'] as _i3.CatEndpoint).createCat(
            session,
            params['cat'],
          ),
        ),
        'updateCat': _i1.MethodConnector(
          name: 'updateCat',
          params: {
            'cat': _i1.ParameterDescription(
              name: 'cat',
              type: _i1.getType<_i9.Cat>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['cat'] as _i3.CatEndpoint).updateCat(
            session,
            params['cat'],
          ),
        ),
        'deleteCat': _i1.MethodConnector(
          name: 'deleteCat',
          params: {
            'cat': _i1.ParameterDescription(
              name: 'cat',
              type: _i1.getType<_i9.Cat>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['cat'] as _i3.CatEndpoint).deleteCat(
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
              (endpoints['company'] as _i4.CompanyEndpoint)
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
              (endpoints['company'] as _i4.CompanyEndpoint).getCompany(
            session,
            params['id'],
          ),
        ),
        'createCompany': _i1.MethodConnector(
          name: 'createCompany',
          params: {
            'company': _i1.ParameterDescription(
              name: 'company',
              type: _i1.getType<_i10.Company>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['company'] as _i4.CompanyEndpoint).createCompany(
            session,
            params['company'],
          ),
        ),
        'updateCompany': _i1.MethodConnector(
          name: 'updateCompany',
          params: {
            'company': _i1.ParameterDescription(
              name: 'company',
              type: _i1.getType<_i10.Company>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['company'] as _i4.CompanyEndpoint).updateCompany(
            session,
            params['company'],
          ),
        ),
        'deleteCompany': _i1.MethodConnector(
          name: 'deleteCompany',
          params: {
            'company': _i1.ParameterDescription(
              name: 'company',
              type: _i1.getType<_i10.Company>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['company'] as _i4.CompanyEndpoint).deleteCompany(
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
              (endpoints['example'] as _i5.ExampleEndpoint).hello(
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
              (endpoints['example'] as _i5.ExampleEndpoint)
                  .getCustomClass(session),
        ),
        'getFreezedCustomClass': _i1.MethodConnector(
          name: 'getFreezedCustomClass',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i5.ExampleEndpoint)
                  .getFreezedCustomClass(session),
        ),
        'doThingy': _i1.MethodConnector(
          name: 'doThingy',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i5.ExampleEndpoint).doThingy(session),
        ),
        'getRemoteIpAddress': _i1.MethodConnector(
          name: 'getRemoteIpAddress',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i5.ExampleEndpoint)
                  .getRemoteIpAddress(session),
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
              type: _i1.getType<_i11.Post>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i6.PostEndpoint).createPost(
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
              (endpoints['post'] as _i6.PostEndpoint).getPost(
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
              (endpoints['post'] as _i6.PostEndpoint).getPosts(session),
        ),
        'updatePost': _i1.MethodConnector(
          name: 'updatePost',
          params: {
            'post': _i1.ParameterDescription(
              name: 'post',
              type: _i1.getType<_i11.Post>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i6.PostEndpoint).updatePost(
            session,
            params['post'],
          ),
        ),
        'deletePost': _i1.MethodConnector(
          name: 'deletePost',
          params: {
            'post': _i1.ParameterDescription(
              name: 'post',
              type: _i1.getType<_i11.Post>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i6.PostEndpoint).deletePost(
            session,
            params['post'],
          ),
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
              (endpoints['user'] as _i7.UserEndpoint).find(session),
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
              (endpoints['user'] as _i7.UserEndpoint).equal(
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
              (endpoints['user'] as _i7.UserEndpoint).notEqual(
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
              (endpoints['user'] as _i7.UserEndpoint).operators(
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
              (endpoints['user'] as _i7.UserEndpoint).between(
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
              (endpoints['user'] as _i7.UserEndpoint).notBetween(
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
              (endpoints['user'] as _i7.UserEndpoint).inSet(
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
              (endpoints['user'] as _i7.UserEndpoint).notInSet(
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
              (endpoints['user'] as _i7.UserEndpoint).like(
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
              (endpoints['user'] as _i7.UserEndpoint).notLike(
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
              (endpoints['user'] as _i7.UserEndpoint).iLike(
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
              (endpoints['user'] as _i7.UserEndpoint).notILike(
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
              (endpoints['user'] as _i7.UserEndpoint).logicalOperators(
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
              (endpoints['user'] as _i7.UserEndpoint).oneToOne(
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
              (endpoints['user'] as _i7.UserEndpoint).oneToMany(
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
              (endpoints['user'] as _i7.UserEndpoint).none(
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
              (endpoints['user'] as _i7.UserEndpoint).any(
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
              (endpoints['user'] as _i7.UserEndpoint).every(
            session,
            params['id'],
          ),
        ),
      },
    );
  }
}
