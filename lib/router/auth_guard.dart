import 'package:auto_route/auto_route.dart';
import 'package:dayder/core/authentication/domain/authentication.dart';
import 'package:dayder/router/router.gr.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class AuthGuard extends AutoRouteGuard {
  AuthGuard(Authentication authentication) : _auth = authentication;
  final Authentication _auth;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (_auth.currentUser() != null) {
      resolver.next();
    } else {
      resolver.redirect(const Login());
    }
  }
}
