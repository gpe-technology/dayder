// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() codeVerification,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? codeVerification,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? codeVerification,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginState value) login,
    required TResult Function(CodeVerificationState value) codeVerification,
    required TResult Function(LogoutState value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginState value)? login,
    TResult? Function(CodeVerificationState value)? codeVerification,
    TResult? Function(LogoutState value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginState value)? login,
    TResult Function(CodeVerificationState value)? codeVerification,
    TResult Function(LogoutState value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginStateImpl implements LoginState {
  const _$LoginStateImpl();

  @override
  String toString() {
    return 'AuthState.login()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() codeVerification,
    required TResult Function() logout,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? codeVerification,
    TResult? Function()? logout,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? codeVerification,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginState value) login,
    required TResult Function(CodeVerificationState value) codeVerification,
    required TResult Function(LogoutState value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginState value)? login,
    TResult? Function(CodeVerificationState value)? codeVerification,
    TResult? Function(LogoutState value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginState value)? login,
    TResult Function(CodeVerificationState value)? codeVerification,
    TResult Function(LogoutState value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginState implements AuthState {
  const factory LoginState() = _$LoginStateImpl;
}

/// @nodoc
abstract class _$$CodeVerificationStateImplCopyWith<$Res> {
  factory _$$CodeVerificationStateImplCopyWith(
          _$CodeVerificationStateImpl value,
          $Res Function(_$CodeVerificationStateImpl) then) =
      __$$CodeVerificationStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CodeVerificationStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$CodeVerificationStateImpl>
    implements _$$CodeVerificationStateImplCopyWith<$Res> {
  __$$CodeVerificationStateImplCopyWithImpl(_$CodeVerificationStateImpl _value,
      $Res Function(_$CodeVerificationStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CodeVerificationStateImpl implements CodeVerificationState {
  const _$CodeVerificationStateImpl();

  @override
  String toString() {
    return 'AuthState.codeVerification()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeVerificationStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() codeVerification,
    required TResult Function() logout,
  }) {
    return codeVerification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? codeVerification,
    TResult? Function()? logout,
  }) {
    return codeVerification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? codeVerification,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (codeVerification != null) {
      return codeVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginState value) login,
    required TResult Function(CodeVerificationState value) codeVerification,
    required TResult Function(LogoutState value) logout,
  }) {
    return codeVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginState value)? login,
    TResult? Function(CodeVerificationState value)? codeVerification,
    TResult? Function(LogoutState value)? logout,
  }) {
    return codeVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginState value)? login,
    TResult Function(CodeVerificationState value)? codeVerification,
    TResult Function(LogoutState value)? logout,
    required TResult orElse(),
  }) {
    if (codeVerification != null) {
      return codeVerification(this);
    }
    return orElse();
  }
}

abstract class CodeVerificationState implements AuthState {
  const factory CodeVerificationState() = _$CodeVerificationStateImpl;
}

/// @nodoc
abstract class _$$LogoutStateImplCopyWith<$Res> {
  factory _$$LogoutStateImplCopyWith(
          _$LogoutStateImpl value, $Res Function(_$LogoutStateImpl) then) =
      __$$LogoutStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LogoutStateImpl>
    implements _$$LogoutStateImplCopyWith<$Res> {
  __$$LogoutStateImplCopyWithImpl(
      _$LogoutStateImpl _value, $Res Function(_$LogoutStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutStateImpl implements LogoutState {
  const _$LogoutStateImpl();

  @override
  String toString() {
    return 'AuthState.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() codeVerification,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? codeVerification,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? codeVerification,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginState value) login,
    required TResult Function(CodeVerificationState value) codeVerification,
    required TResult Function(LogoutState value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginState value)? login,
    TResult? Function(CodeVerificationState value)? codeVerification,
    TResult? Function(LogoutState value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginState value)? login,
    TResult Function(CodeVerificationState value)? codeVerification,
    TResult Function(LogoutState value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LogoutState implements AuthState {
  const factory LogoutState() = _$LogoutStateImpl;
}
