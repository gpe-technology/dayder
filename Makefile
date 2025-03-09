# Makefile
get:
	fvm flutter clean
	fvm flutter pub get
gen-l10n:
	fvm flutter gen-l10n
upgrade:
	fvm flutter pub upgrade --major-versions
build_runner:
	fvm flutter pub run build_runner build --delete-conflicting-outputs
build_runner_watch:
	fvm flutter pub run build_runner watch --delete-conflicting-outputs
test_coverage:
	fvm flutter test --coverage
	lcov --remove coverage/lcov.info '*.g.dart' 'lib/*/data/*' -o coverage/lcov.cleaned.info
	genhtml coverage/lcov.cleaned.info -o coverage/html
	 open coverage/html/index.html