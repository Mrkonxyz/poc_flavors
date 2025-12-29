# --- Android Builds ---
build-android-dev:
	flutter build apk --flavor dev --target lib/main_dev.dart --dart-define-from-file=assets/config/dev.json

build-android-uat:
	flutter build apk --flavor uat --target lib/main_uat.dart --dart-define-from-file=assets/config/uat.json

build-android-prod:
	flutter build appbundle --flavor prod --target lib/main_prod.dart --dart-define-from-file=assets/config/prod.json

# --- iOS Builds ---
build-ios-dev:
	flutter build ipa --flavor dev --target lib/main_dev.dart --dart-define-from-file=assets/config/dev.json
build-ios-prod:
	flutter build ipa --flavor prod --target lib/main_prod.dart --dart-define-from-file=assets/config/prod.json