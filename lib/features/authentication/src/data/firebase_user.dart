import 'package:dayder/features/authentication/src/domain/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb;

fb.FirebaseAuth auth = fb.FirebaseAuth.instance;

mixin FirebaseUser implements User {
  @override
  Future<void> setEmail(String value) async {
    await auth.currentUser?.verifyBeforeUpdateEmail(value);
  }

  @override
  Future<void> setName(String value) async {
    await auth.currentUser?.updateDisplayName(value);
  }
}
