import 'package:dayder/features/authentication/authentication.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUp() {
  getIt.registerLazySingleton<FirebaseAuthentication>(() => FirebaseAuthentication());
}
