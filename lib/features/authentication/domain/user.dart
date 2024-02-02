import 'package:dayder/features/authentication/data/firebase_user.dart';

class User with FirebaseUser {
  final String id;
  final String name;
  final String email;
  final String phone;

  User(this.id, this.name, this.email, this.phone);
}
