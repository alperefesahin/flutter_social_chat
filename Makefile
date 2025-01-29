clean:
	flutter clean
	flutter pub get
	make build_runner
	make localization
	flutter pub get

build_runner:
	dart run build_runner build --delete-conflicting-outputs

localization:
	flutter gen-l10n --arb-dir lib/presentation/l10n

firebase:
	firebase login
	dart pub global activate flutterfire_cli
	export PATH="$PATH":"$HOME/.pub-cache/bin"
	flutterfire configure