import 'package:dayder/features/authentication/src/domain/authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

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
        Logger().e(exception.code);
      },
      codeSent: codeSent,
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  @override
  Future<void> signInWithPhoneBy(String verificationId, String smsCode) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: smsCode);
    UserCredential userCredential = await auth.signInWithCredential(credential);
    Logger().i(userCredential);
  }

  @override
  Future<void> logout() async {
    await auth.signOut();
  }

  @override
  currentUser() {
    return auth.currentUser;
  }
}
