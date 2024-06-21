import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

class AuthenticationEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  @override
  Set<Scope> get requiredScopes => {
        Scope.admin,
        CustomScope.userRead,
        CustomScope.userWrite,
      };

  Future<void> changeScopesAdmin(Session session, int userId) async {
    await Users.updateUserScopes(session, userId, {Scope.admin});
  }

  Future<UserInfo?> findUserLogin(Session session) async {
    final AuthenticationInfo? info = await session.authenticated;

    return Users.findUserByUserId(session, info!.userId);
  }
}

class CustomScope extends Scope {
  const CustomScope._(super.name);

  static const userRead = CustomScope._('custom.user.read');
  static const userWrite = CustomScope._('custom.user.write');
}
