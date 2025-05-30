import 'package:flutter/material.dart';

import '../../../../core/core.dart';

mixin OnboardingHelper {
  EdgeInsets onboardingHorizontalPadding(BuildContext context) {
    return EdgeInsets.symmetric(
      horizontal: ResponsiveUtils.responsiveSize(
        context,
        mobile: Dimensions.space40,
        tablet: Dimensions.space60,
      ),
    );
  }

  TextStyle? titleStyle(BuildContext context) {
    return context.bodyLarge?.copyWith(
      fontWeight: FontWeight.w700,
      fontSize: 24,
      color: context.colorScheme.surface,
    );
  }

  TextStyle? subTitleStyle(BuildContext context) {
    return context.bodyLarge?.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: 16,

      color: context.colorScheme.surface,
    );
  }

  TextStyle? buttonContentStyle(BuildContext context) {
    return context.titleSmall?.copyWith(
      fontWeight: FontWeight.w600,
      color: context.colorScheme.primary,
    );
  }
}
