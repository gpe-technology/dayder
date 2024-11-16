import 'package:dayder/di/di_initializer.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit()
Future<GetIt> initDI(GetIt getIt) =>
    getIt.init(environment: const String.fromEnvironment('ENV'));
