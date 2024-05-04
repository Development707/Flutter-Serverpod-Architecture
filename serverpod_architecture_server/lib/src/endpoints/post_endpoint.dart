import 'package:serverpod/serverpod.dart';

import '../generated/post.dart';

/// CRUD endpoint for handling all operations on `Post` objects.
class PostEndpoint extends Endpoint {
  /// Creates a new post in the database.
  ///
  /// The [session] parameter is the session object representing the current user session.
  /// The [post] parameter is the post object to be inserted into the database.
  ///
  /// Returns a `Future` that resolves to the inserted post object.
  Future<Post> createPost(Session session, Post post) async {
    return Post.db.insertRow(session, post);
  }

  /// Retrieves a single [Post] object from the database using the provided [session] and [id].
  ///
  /// The [session] parameter is the session object representing the current user session.
  /// The [id] parameter is the ID of the post to be retrieved.
  ///
  /// Returns a `Future` that resolves to the retrieved [Post] object, or `null` if no post with the given ID exists.
  Future<Post?> getPost(Session session, int id) async {
    return Post.db.findById(session, id);
  }

  /// Retrieves a list of [Post] objects from the database using the provided [session].
  ///
  /// Parameters:
  ///   - [session]: The [Session] object used to access the database.
  ///
  /// Returns:
  ///   - A [Future] that resolves to a list of [Post] objects.
  Future<List<Post>> getPosts(Session session) async {
    return Post.db.find(session);
  }

  /// Updates a [Post] object in the database using the provided [session] and [post].
  ///
  /// The [session] parameter is the session object representing the current user session.
  /// The [post] parameter is the post object to be updated in the database.
  ///
  /// This function returns a `Future` that resolves when the update is complete.
  Future<void> updatePost(Session session, Post post) async {
    await Post.db.updateRow(session, post);
  }

  /// Deletes a [Post] object from the database using the provided [session] and [post].
  ///
  /// The [session] parameter is the session object representing the current user session.
  /// The [post] parameter is the post object to be deleted from the database.
  ///
  /// Returns a `Future` that resolves to `void`.
  Future<void> deletePost(Session session, Post post) async {
    await Post.db.deleteRow(session, post);
  }
}
