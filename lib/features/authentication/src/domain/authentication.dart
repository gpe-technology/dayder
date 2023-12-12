import '../data/user_model/user_model.dart';

abstract class Authentication {
  UserModel? currentUser();

  Future<void> verifyPhone(String number, Function(String, int?) codeSent);

  Future<void> signInWithPhoneBy(String verificationId, String smsCode);

  Future<void> logout();
}
