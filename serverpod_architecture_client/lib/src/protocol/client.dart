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
import 'package:serverpod_architecture_client/src/protocol/company.dart' as _i3;
import 'package:serverpod_architecture_shared/src/class_name.dart' as _i4;
import 'package:serverpod_architecture_shared/src/freezed_custom_class.dart'
    as _i5;
import 'protocol.dart' as _i6;

/// {@category Endpoint}
class EndpointCompany extends _i1.EndpointRef {
  EndpointCompany(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'company';

  _i2.Future<List<_i3.Company>> getAllCompanies() =>
      caller.callServerEndpoint<List<_i3.Company>>(
        'company',
        'getAllCompanies',
        {},
      );

  _i2.Future<_i3.Company?> getCompany(int id) =>
      caller.callServerEndpoint<_i3.Company?>(
        'company',
        'getCompany',
        {'id': id},
      );

  _i2.Future<_i3.Company> createCompany(_i3.Company company) =>
      caller.callServerEndpoint<_i3.Company>(
        'company',
        'createCompany',
        {'company': company},
      );

  _i2.Future<_i3.Company> updateCompany(_i3.Company company) =>
      caller.callServerEndpoint<_i3.Company>(
        'company',
        'updateCompany',
        {'company': company},
      );

  _i2.Future<int> deleteCompany(_i3.Company company) =>
      caller.callServerEndpoint<int>(
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

  _i2.Future<_i4.ClassName> getCustomClass() =>
      caller.callServerEndpoint<_i4.ClassName>(
        'example',
        'getCustomClass',
        {},
      );

  _i2.Future<_i5.FreezedCustomClass> getFreezedCustomClass() =>
      caller.callServerEndpoint<_i5.FreezedCustomClass>(
        'example',
        'getFreezedCustomClass',
        {},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i6.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    company = EndpointCompany(this);
    example = EndpointExample(this);
  }

  late final EndpointCompany company;

  late final EndpointExample example;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'company': company,
        'example': example,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
