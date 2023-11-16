import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AuthState { isLogin, isCodeVerification, isLogout }

final authProvider = Provider<AuthState>((ref) => throw UnimplementedError());
