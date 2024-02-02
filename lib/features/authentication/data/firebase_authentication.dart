import 'package:dayder/features/authentication/domain/authentication.dart';
import 'package:dayder/features/authentication/domain/user.dart' as entity;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import 'model/user_model.dart';

@Injectable(as: Authentication, env: [Environment.prod])
class FirebaseAuthentication implements Authentication {
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Future<void> verifyPhone(
    String number,
    Function(String, int?) codeSent,
  ) async {
    await auth.verifyPhoneNumber(
      phoneNumber: number,
      timeout: const Duration(seconds: 60),
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential);
      },
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
    await auth.signInWithCredential(credential);
  }

  @override
  Future<void> logout() async {
    await auth.signOut();
  }

  @override
  entity.User? currentUser() {
    if (auth.currentUser != null) {
      final result = UserModel.fromJson({
        "uid": auth.currentUser?.uid,
        "phoneNumber": auth.currentUser?.phoneNumber,
        "displayName": auth.currentUser?.displayName,
        "email": auth.currentUser?.email,
        "emailVerified": auth.currentUser?.emailVerified,
        "isAnonymous": auth.currentUser?.isAnonymous,
        "refreshToken": auth.currentUser?.refreshToken,
        "tenantId": auth.currentUser?.tenantId,
        "photoURL": auth.currentUser?.photoURL,
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

//auth.currentUser
