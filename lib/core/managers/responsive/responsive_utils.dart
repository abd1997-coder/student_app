import 'package:flutter/material.dart';

import '../../core.dart';

class ResponsiveUtils {
  static double responsiveSize(
    BuildContext context, {
    double? mobile,
    double? tablet,
    double? desktop,
  }) {
    if (ResponsiveUtils.isDesktop(context) && desktop != null) {
      return desktop;
    } else if (ResponsiveUtils.isTablet(context) && tablet != null) {
      return tablet;
    } else if (mobile != null) {
      return mobile;
    } else {
      return 0.0;
    }
  }

  static int integerResponsiveSize(
    BuildContext context, {
    required int mobile,
    required int tablet,
    required int desktop,
  }) {
    if (ResponsiveUtils.isDesktop(context)) {
      return desktop;
    } else if (ResponsiveUtils.isTablet(context)) {
      return tablet;
    } else {
      return mobile;
    }
  }

  static DisplayType displayTypeOf(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    const RefinedBreakpoints refinedBreakpoints = RefinedBreakpoints();
    if (width >= refinedBreakpoints.desktopSmall) {
      return DisplayType.desktop;
    } else if (width >= refinedBreakpoints.tabletSmall) {
      return DisplayType.tablet;
    } else {
      return DisplayType.mobile;
    }
  }

  /// Returns a boolean if we are in a display of [DisplayType.desktop]. Used to
  /// build adaptive and responsive layouts.
  static bool isDesktop(BuildContext context) {
    return displayTypeOf(context) == DisplayType.desktop;
  }

  /// Returns a boolean if we are in a display of [DisplayType.mobile]. Used to
  /// build adaptive and responsive layouts.
  static bool isMobile(BuildContext context) {
    return displayTypeOf(context) == DisplayType.mobile;
  }

  static bool isTablet(BuildContext context) {
    return displayTypeOf(context) == DisplayType.tablet;
  }
}

class RefinedBreakpoints {
  const RefinedBreakpoints({
    this.mobileSmall = 320,
    this.mobileNormal = 375,
    this.mobileLarge = 414,
    this.mobileExtraLarge = 480,
    this.tabletSmall = 600,
    this.tabletNormal = 768,
    this.tabletLarge = 850,
    this.tabletExtraLarge = 900,
    this.desktopSmall = 950,
    this.desktopNormal = 1366,
    this.desktopLarge = 3840,
    this.desktopExtraLarge = 4096,
  });

  final double mobileSmall;
  final double mobileNormal;
  final double mobileLarge;
  final double mobileExtraLarge;

  final double tabletSmall;
  final double tabletNormal;
  final double tabletLarge;
  final double tabletExtraLarge;

  final double desktopSmall;
  final double desktopNormal;
  final double desktopLarge;
  final double desktopExtraLarge;

  @override
  String toString() {
    return 'Desktop: Small - $desktopSmall Normal - $desktopNormal Large - $desktopLarge ExtraLarge - $desktopExtraLarge\nTablet: Small - $tabletSmall Normal - $tabletNormal Large - $tabletLarge ExtraLarge - $tabletExtraLarge\nMobile: Small - $mobileSmall Normal - $mobileNormal Large - $mobileLarge ExtraLarge - $mobileExtraLarge';
  }
}

class StandardBreakPoints {
  static const num mobile = 480;
  static const num tablet = 900;
}
