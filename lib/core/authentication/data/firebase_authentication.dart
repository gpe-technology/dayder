import 'package:dayder/core/authentication/domain/authentication.dart';
import 'package:dayder/core/authentication/domain/user.dart' as entity;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import 'model/user_model.dart';

@Injectable(as: Authentication, env: [Environment.prod])
class FirebaseAuthentication implements Authentication {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<void> verifyPhone(
    String number,
    Function(String, int?) codeSent,
  ) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: number,
      timeout: const Duration(seconds: 60),
      verificationCompleted: _auth.signInWithCredential,
      verificationFailed: (FirebaseAuthException exception) {
        Logger().e(exception.toString());
      },
      codeSent: codeSent,
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  @override
  Future<void> signInWithPhoneBy(String verificationId, String smsCode) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: smsCode);
    await _auth.signInWithCredential(credential);
  }

  @override
  Future<void> logout() async {
    await _auth.signOut();
  }

  @override
  entity.User? currentUser() {
    if (_auth.currentUser != null) {
      final result = UserModel.fromJson({
        "uid": _auth.currentUser?.uid,
        "phoneNumber": _auth.currentUser?.phoneNumber,
        "displayName": _auth.currentUser?.displayName,
        "email": _auth.currentUser?.email,
        "emailVerified": _auth.currentUser?.emailVerified,
        "isAnonymous": _auth.currentUser?.isAnonymous,
        "refreshToken": _auth.currentUser?.refreshToken,
        "tenantId": _auth.currentUser?.tenantId,
        "photoURL": _auth.currentUser?.photoURL,
      });
      return entity.User(
        result.uid,
        result.displayName ?? '',
        result.email ?? '',
        result.phoneNumber,
      );
    }
    return null;
  }
}
