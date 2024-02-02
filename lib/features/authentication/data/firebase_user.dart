import 'package:dayder/features/authentication/domain/user_i.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb;

fb.FirebaseAuth auth = fb.FirebaseAuth.instance;

mixin FirebaseUser implements UserI {
  @override
  Future<void> setName(String value) async {
    await auth.currentUser?.updateDisplayName(value);
  }

  @override
  Future<void> setEmail(String value) async {
    await auth.currentUser?.verifyBeforeUpdateEmail(value);
  }
}
