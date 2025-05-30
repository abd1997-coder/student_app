import 'package:flutter/material.dart';

import '../../../core.dart';

class TabletTextThemes extends AppTextTheme implements Customizable {
  TabletTextThemes() {
    FontSize(DisplayType.tablet);
  }

  @override
  TextStyle modifyBodyLarge() => super.bodyLarge.copyWith(
        fontSize: FontSize.largeBody,
      );

  @override
  TextStyle modifyBodyMedium() => super.bodyMedium.copyWith(
        fontSize: FontSize.mediumBody,
      );

  @override
  TextStyle modifyBodySmall() => super.bodySmall.copyWith(
        fontSize: FontSize.smallBody,
      );

  @override
  TextStyle modifyLargeHeadline() => super.largeHeadline.copyWith(
        fontSize: FontSize.largeHeadline,
      );

  @override
  TextStyle modifyLargeLabel() => super.largeLabel.copyWith(
        fontSize: FontSize.largeLabel,
      );

  @override
  TextStyle modifyMediumHeadline() => super.mediumHeadline.copyWith(
        fontSize: FontSize.mediumHeadline,
      );

  @override
  TextStyle modifyMediumLabel() => super.mediumLabel.copyWith(
        fontSize: FontSize.mediumLabel,
      );

  @override
  TextStyle modifySmallHeadline() => super.smallHeadline.copyWith(
        fontSize: FontSize.smallHeadline,
      );

  @override
  TextStyle modifySmallLabel() => super.smallLabel.copyWith(
        fontSize: FontSize.smallLabel,
      );

       @override
  TextStyle titleSmallLabel() => super.smallTitle.copyWith(
        fontSize: FontSize.smallTitle,
      );

}
