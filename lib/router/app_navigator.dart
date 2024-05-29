import 'package:dayder/router/router.gr.dart';
import 'package:injectable/injectable.dart';

import 'router.dart';

@Injectable()
class AppNavigator {
  AppNavigator(AppRouter router) : _router = router;

  final AppRouter _router;

  Future<void> goToDashboard() async {
    await _router.push(const Dashboard());
  }

  Future<void> goToCodeVerification() async {
    await _router.push(const Code());
  }
}
