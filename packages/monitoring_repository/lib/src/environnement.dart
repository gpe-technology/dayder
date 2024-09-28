/// Return associated Environment from dart defined ENV variable
/// (--dart-define=ENV=develop).
///
/// Defaults to [production].
String get environment {
  const envVar = String.fromEnvironment('ENV');
  return envVar == "" ? 'production' : envVar;
}
