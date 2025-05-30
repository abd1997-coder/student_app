import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

class LocalizationConfig {
  static List<String> supportedLanguages = <String>['ar', 'en'];

  static List<Locale> supportedLocales =
      supportedLanguages.map((String lang) => Locale(lang)).toList();

  static String translationFilePath = 'assets/translations';

  static Locale defaultLocale = supportedLocales[0];

  // Getter for the current language using EasyLocalization
  static String get currentLanguage {
    final BuildContext? context = navigatorKey.currentContext;
    if (context != null) {
      return EasyLocalization.of(context)!.locale.toString();
    }
    return defaultLocale
        .languageCode; // Fallback to default locale if context is null
  }

  // Setter for the current language using EasyLocalization
  static set currentLanguage(String language) {
    final BuildContext? context = navigatorKey.currentContext;
    if (context != null && supportedLanguages.contains(language)) {
      final Locale newLocale = Locale(language);
      EasyLocalization.of(context)!.setLocale(newLocale);
    } else if (!supportedLanguages.contains(language)) {
      throw ArgumentError('Unsupported language: $language');
    }
  }

  // Function to set locale for the app
  static Future<void> setAppLocale(Locale locale) async {
    final BuildContext? context = navigatorKey.currentContext;
    if (context != null && supportedLocales.contains(locale)) {
      await EasyLocalization.of(context)!.setLocale(locale);
      // GlobalNotifiers.languagesNotifier.value =
      //     !GlobalNotifiers.languagesNotifier.value;
    } else {
      throw ArgumentError('Unsupported locale: ${locale.languageCode}');
    }
  }
}
