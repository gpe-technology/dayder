import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AuthState { isLogin, isCodeVerification, isLogout }

final authStateProvider = Provider<AuthState>((ref) => throw UnimplementedError());
