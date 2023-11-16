import 'package:dayder/features/authentication/authentication.dart';
import 'package:get_it/get_it.dart';

class Setup {
  static final _getIt = GetIt.instance;

  static GetIt init() {
    _getIt.registerLazySingleton<FirebaseAuthentication>(
        () => FirebaseAuthentication());
    return _getIt;
  }
}
