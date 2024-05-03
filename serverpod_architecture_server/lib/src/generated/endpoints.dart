/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/company_endpoint.dart' as _i2;
import '../endpoints/example_endpoint.dart' as _i3;
import 'package:serverpod_architecture_server/src/generated/company.dart'
    as _i4;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'company': _i2.CompanyEndpoint()
        ..initialize(
          server,
          'company',
          null,
        ),
      'example': _i3.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
    };
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
              (endpoints['company'] as _i2.CompanyEndpoint)
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
              (endpoints['company'] as _i2.CompanyEndpoint).getCompany(
            session,
            params['id'],
          ),
        ),
        'createCompany': _i1.MethodConnector(
          name: 'createCompany',
          params: {
            'company': _i1.ParameterDescription(
              name: 'company',
              type: _i1.getType<_i4.Company>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['company'] as _i2.CompanyEndpoint).createCompany(
            session,
            params['company'],
          ),
        ),
        'updateCompany': _i1.MethodConnector(
          name: 'updateCompany',
          params: {
            'company': _i1.ParameterDescription(
              name: 'company',
              type: _i1.getType<_i4.Company>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['company'] as _i2.CompanyEndpoint).updateCompany(
            session,
            params['company'],
          ),
        ),
        'deleteCompany': _i1.MethodConnector(
          name: 'deleteCompany',
          params: {
            'company': _i1.ParameterDescription(
              name: 'company',
              type: _i1.getType<_i4.Company>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['company'] as _i2.CompanyEndpoint).deleteCompany(
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
              (endpoints['example'] as _i3.ExampleEndpoint).hello(
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
              (endpoints['example'] as _i3.ExampleEndpoint)
                  .getCustomClass(session),
        ),
        'getFreezedCustomClass': _i1.MethodConnector(
          name: 'getFreezedCustomClass',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i3.ExampleEndpoint)
                  .getFreezedCustomClass(session),
        ),
        'doThingy': _i1.MethodConnector(
          name: 'doThingy',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i3.ExampleEndpoint).doThingy(session),
        ),
        'getRemoteIpAddress': _i1.MethodConnector(
          name: 'getRemoteIpAddress',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i3.ExampleEndpoint)
                  .getRemoteIpAddress(session),
        ),
      },
    );
  }
}
