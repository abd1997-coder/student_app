import 'package:flutter/material.dart';
import 'theme.dart';

class ThemeManager {
  static ThemeData themeData(Customizable customTheme) => ThemeData(
    scrollbarTheme: const ScrollbarThemeData().copyWith(
      thumbColor: WidgetStateProperty.all(Palette.primary),
    ),
    colorScheme: ColorScheme.fromSeed(
      primary: Palette.primary,
      onPrimary: Palette.lightPrimary,
      seedColor: Palette.primary,
      error: Palette.error,
      tertiary: Palette.darkGray,
      surface: Palette.white,
      onSurface: Palette.writing,
      secondary: Palette.secondary,
      onSecondary: Palette.secondaryText,
    ),

    dialogTheme: const DialogThemeData(
      surfaceTintColor: Palette.white,
      backgroundColor: Palette.white,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Palette.primary,
      circularTrackColor: Palette.lightPrimary,
    ),
    scaffoldBackgroundColor: const Color.fromRGBO(246, 246, 246, 1),
    cardColor: Palette.gray,
    hintColor: const Color.fromRGBO(162, 101, 249, 0.5),
    // shadowColor: Palette.grey,
    shadowColor: const Color.fromRGBO(0, 0, 0, 0.25),
    fontFamily: FontFamily.theSans,

    dividerColor: const Color.fromRGBO(112, 128, 144, 0.2),
    dividerTheme: const DividerThemeData(
      color: Color.fromRGBO(112, 128, 144, 0.2),
      thickness: 1,
    ),
    textTheme: TextTheme(
      headlineLarge: customTheme.modifyLargeHeadline(),
      headlineMedium: customTheme.modifyMediumHeadline(),
      headlineSmall: customTheme.modifySmallHeadline(),
      bodyLarge: customTheme.modifyBodyLarge(),
      bodyMedium: customTheme.modifyBodyMedium(),
      bodySmall: customTheme.modifyBodySmall(),
      labelLarge: customTheme.modifyLargeLabel(),
      labelMedium: customTheme.modifyMediumLabel(),
      labelSmall: customTheme.modifySmallLabel(),
      titleSmall: customTheme.titleSmallLabel(),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(horizontal: Dimensions.space4),
        ),
        textStyle: WidgetStateProperty.all(
          const TextStyle(fontWeight: FontWeight.w600, color: Palette.text),
        ),
        foregroundColor: WidgetStateProperty.all(Palette.text),
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Palette.background,
      showDragHandle: true,
      dragHandleColor: Color.fromRGBO(178, 190, 195, 1),
      dragHandleSize: Size(42, 3),
    ),

    appBarTheme: AppBarTheme(
      titleTextStyle: customTheme.titleSmallLabel().copyWith(
        color: Palette.text,
        fontWeight: FontWeight.w700,
      ),
      color: const Color.fromRGBO(247, 247, 247, 1),
      iconTheme: const IconThemeData(color: Palette.text),
      surfaceTintColor: Palette.white,
      shadowColor: Palette.primary,
      centerTitle: true,
      elevation: 0,
    ),
  );
}
