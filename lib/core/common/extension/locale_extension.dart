import 'dart:ui';

extension LocaleExtension on Locale {
  TextDirection get textDirection =>
      languageCode == 'ar' ? TextDirection.rtl : TextDirection.ltr;

  bool get isRTL => textDirection == TextDirection.rtl;
}
