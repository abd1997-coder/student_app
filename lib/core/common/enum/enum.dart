// ignore_for_file: constant_identifier_names

import '../../core.dart';

enum AppType { student, teacher, admin, parent }

enum SystemInfo {
  privacyPolicy,
  termsOfUse,
  aboutUs,
  reviewPolicy,
  cancellationPolicy,
}

enum DisplayType { desktop, tablet, mobile }

enum Gender { none, male, female }

enum PruchesType { material, unit, attachment , video }

extension PlatformTypeExtension on DisplayType {
  Customizable get textTheme {
    switch (this) {
      case DisplayType.mobile:
        return MobileTextThemes();
      case DisplayType.tablet:
      case DisplayType.desktop:
        return TabletTextThemes();
    }
  }
}
