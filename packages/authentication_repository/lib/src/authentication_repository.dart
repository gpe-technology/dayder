import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:cache/cache.dart';
import 'package:meta/meta.dart';

import 'models/models.dart';

final class AuthenticationRepository {
  AuthenticationRepository(
      {firebase_auth.FirebaseAuth? firebaseAuth, CacheClient? cache})
      : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance,
        _cache = cache ?? CacheClient();
  final firebase_auth.FirebaseAuth _firebaseAuth;
  final CacheClient _cache;

  @visibleForTesting
  static const userCacheKey = '__user_cache_key__';

  Stream<User> get user {
    return _firebaseAuth.authStateChanges().map((firebaseUser) {
      final user = firebaseUser == null ? User.empty : firebaseUser.toUser;
      _cache.write(key: userCacheKey, value: user);
      return user;
    });
  }

  User get currentUser {
    return _cache.read<User>(key: userCacheKey) ?? User.empty;
  }

  Future<void> verifyPhoneNumber({
    required String number,
    required Function(String, int?) codeSent,
  }) async {
    await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: number,
      timeout: const Duration(seconds: 60),
      verificationCompleted: _firebaseAuth.signInWithCredential,
      verificationFailed: (firebase_auth.FirebaseAuthException exception) {
        //Logger().e(exception.message);
      },
      codeSent: codeSent,
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  Future<void> signInWithPhone({
    required String verificationId,
    required String smsCode,
  }) async {
    firebase_auth.PhoneAuthCredential credential =
        firebase_auth.PhoneAuthProvider.credential(
            verificationId: verificationId, smsCode: smsCode);
    await _firebaseAuth.signInWithCredential(credential);
  }

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> logout() async {
    await _firebaseAuth.signOut();
  }
}

extension on firebase_auth.User {
  User get toUser {
    return User(id: uid, email: email, name: displayName, photo: photoURL);
  }
}
