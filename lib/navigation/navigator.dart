import 'package:dayder/navigation/router/router.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class Navigator {
  final DayderRouter _router;

  Navigator(this._router);

  Future<void> goToPublish() async {
    await _router.pushNamed('/publish');
  }

  Future<void> goToSetName() async {
    await _router.pushNamed('/set-name');
  }

  Future<void> goToDetail() async {
    await _router.pushNamed('/detail');
  }
}
