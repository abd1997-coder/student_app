# A Makefile is a special file that defines a set of tasks to be executed using the make utility.

pub_clean_get: pub_clean pub_get

pub_clean:
	flutter clean
pub_get:
	flutter pub get

translate:
	dart run easy_localization:generate -S assets/translations -f keys -o keys.g.dart && dart run easy_localization:generate -S assets/translations -o codegen_loader.g.dart

pub_build:
	dart run build_runner build -d

sh1:
	cd android && ./gradlew SigningReport && cd ..