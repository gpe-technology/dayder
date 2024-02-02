import 'package:dayder/di/di_initializer.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit()
GetIt initDI(GetIt getIt) => getIt.init(environment: Environment.prod);
