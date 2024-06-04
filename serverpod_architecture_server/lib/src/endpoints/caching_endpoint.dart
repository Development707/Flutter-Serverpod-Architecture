import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class CachingEndpoint extends Endpoint {
  Future<UserData> getUserData(Session session, int userId) async {
    // Define a unique key for the UserData object
    var cacheKey = 'UserData-$userId';

    // Try to retrieve the object from the cache
    var userData = await session.caches.local.get<UserData>(cacheKey);

    // If the object wasn't found in the cache, load it from the database and
    // save it in the cache. Make it valid for 5 minutes.
    if (userData == null) {
      userData = await UserData.db.findById(session, userId);
      await session.caches.local
          .put(cacheKey, userData!, lifetime: Duration(minutes: 5));
      session.log('Cached user data for user $userId');
    }

    // Return the user data to the client
    return userData;
  }

  /// Cache miss handler
  Future<UserData?> getUserDataMiss(Session session, int userId) async {
    // Define a unique key for the UserData object
    var cacheKey = 'UserData-$userId';

    // Try to retrieve the object from the cache
    var userData = await session.caches.local.get(
      cacheKey,
      // If the object wasn't found in the cache, load it from the database and
      // save it in the cache. Make it valid for 5 minutes.
      CacheMissHandler(
        () async => UserData.db.findById(session, userId),
        lifetime: Duration(minutes: 5),
      ),
    );

    // Return the user data to the client
    return userData;
  }
}
