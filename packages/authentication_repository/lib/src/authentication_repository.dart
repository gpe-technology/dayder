import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

import 'models/models.dart';

final class AuthenticationRepository {
  final firebase_auth.FirebaseAuth _firebaseAuth;

  AuthenticationRepository({firebase_auth.FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance;

  Stream<User> get user {
    return _firebaseAuth.authStateChanges().map((firebaseUser) {
      final user = firebaseUser == null ? User.empty : firebaseUser.toUser;
      return user;
    });
  }

  Future<void> verifyPhone({
    required String number,
    required Function(String, int?) codeSent,
  }) async {
    await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: number,
      timeout: const Duration(seconds: 60),
      verificationCompleted: _firebaseAuth.signInWithCredential,
      verificationFailed: (firebase_auth.FirebaseAuthException exception) {},
      codeSent: codeSent,
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  Future<void> signInWithPhoneBy({
    required String verificationId,
    required String smsCode,
  }) async {
    firebase_auth.PhoneAuthCredential credential =
        firebase_auth.PhoneAuthProvider.credential(
            verificationId: verificationId, smsCode: smsCode);
    await _firebaseAuth.signInWithCredential(credential);
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
