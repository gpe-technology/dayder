import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DIAppModule {
  @lazySingleton
  GlobalKey<NavigatorState> get key => GlobalKey<NavigatorState>();

  @lazySingleton
  AuthenticationRepository get auth => AuthenticationRepository();
}
