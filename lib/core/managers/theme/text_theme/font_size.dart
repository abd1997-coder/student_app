import '../../../core.dart';

class FontSize {
  FontSize(this.displayType) {
    switch (displayType) {
      case DisplayType.mobile:
        _assignMobileValues();
      case DisplayType.desktop:
      case DisplayType.tablet:
        _assignTabletValues();
    }
  }

  static double largeHeadline = 64;
  static double mediumHeadline = 48;
  static double smallHeadline = 32;

  static double largeBody = 22;
  static double mediumBody = 20;
  static double smallBody = 14;

  static double largeLabel = 12;
  static double mediumLabel = 10;
  static double smallLabel = 8;

  static double smallTitle = 16;

  static void initFontSize(DisplayType displayType) {
    switch (displayType) {
      case DisplayType.mobile:
        _assignMobileValues();
      case DisplayType.desktop:
      case DisplayType.tablet:
        _assignTabletValues();
    }
  }

  final DisplayType displayType;

  static void _assignMobileValues() {
    largeHeadline = 64;
    mediumHeadline = 48;
    smallHeadline = 32;
    largeBody = 22;
    mediumBody = 20;
    smallBody = 14;
    largeLabel = 12;
    mediumLabel = 10;
    smallLabel = 8;
    smallTitle = 16;
  }

  static void _assignTabletValues() {
    largeHeadline = 48;
    mediumHeadline = 32;
    smallHeadline = 24;
    largeBody = 28;
    mediumBody = 14;
    smallBody = 16;
    largeLabel = 16;
    mediumLabel = 8;
    smallLabel = 6;
    smallTitle = 16;
  }
}
