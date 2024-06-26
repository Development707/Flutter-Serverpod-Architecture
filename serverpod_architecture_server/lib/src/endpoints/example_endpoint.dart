import 'package:serverpod/serverpod.dart';
import 'package:serverpod_architecture_server/src/generated/custom_exception.dart';
import 'package:serverpod_architecture_server/src/generated/error_type.dart';
import 'package:serverpod_architecture_shared/serverpod_architecture_shared.dart';

// This is an example endpoint of your server. It's best practice to use the
// `Endpoint` ending of the class name, but it will be removed when accessing
// the endpoint from the client. I.e., this endpoint can be accessed through
// `client.example` on the client side.

// After adding or modifying an endpoint, you will need to run
// `serverpod generate` to update the server and client code.
class ExampleEndpoint extends Endpoint {
  // You create methods in your endpoint which are accessible from the client by
  // creating a public method with `Session` as its first parameter.
  // `bool`, `int`, `double`, `String`, `UuidValue`, `Duration`, `DateTime`, `ByteData`,
  // and other serializable classes, exceptions and enums from your from your `protocol` directory.
  // The methods should return a typed future; the same types as for the parameters are
  // supported. The `session` object provides access to the database, logging,
  // passwords, and information about the request being made to the server.
  Future<String> hello(Session session, String name) async {
    return 'Hello $name';
  }

  Future<ClassName> getCustomClass(Session session) async {
    return ClassName(
      'John Doe',
    );
  }

  Future<FreezedCustomClass> getFreezedCustomClass(Session session) async {
    return FreezedCustomClass(
      firstName: 'John',
      lastName: 'Doe',
      age: 25,
    );
  }

  Future<void> doThingy(Session session) async {
    throw CustomException(
      message: 'Failed to do thingy',
      errorType: ErrorType.warning,
    );
  }

  Future<String> getRemoteIpAddress(Session session) async {
    return (session as MethodCallSession).httpRequest.remoteIpAddress;
  }
}
