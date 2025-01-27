build_runner:
	dart run build_runner build --delete-conflicting-outputs

localization:
	flutter gen-l10n --arb-dir lib/presentation/l10n

clean:
	flutter clean
	flutter pub get
	$(MAKE) build_runner
	$(MAKE) localization
	flutter pub get
