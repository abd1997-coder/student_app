import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:root_checker_plus/root_checker_plus.dart';
import 'package:student_app/core/database/database_helper.dart';
import 'package:y_player/y_player.dart';

import 'app.dart' show App;
import 'core/core.dart';
import 'generated/codegen_loader.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  YPlayerInitializer.ensureInitialized();
  await DatabaseHelper.instance.initDatabase();
  Bloc.observer = MyBlocObserver();

  // Check if the device is rooted/jailbroken
  bool isDeviceRooted = false;
  if (Platform.isAndroid) {
    isDeviceRooted = await RootCheckerPlus.isRootChecker() ?? false;
  }
  if (Platform.isIOS) {
    isDeviceRooted = await RootCheckerPlus.isJailbreak() ?? false;
  }
  if (isDeviceRooted) {
    // Display a warning screen and do not continue with the normal app flow.
    runApp(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text(
              "This app cannot run on rooted/jailbroken devices.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
    return;
  }

  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await EasyLocalization.ensureInitialized();
  await serviceLocator();

  runApp(
    EasyLocalization(
      supportedLocales: LocalizationConfig.supportedLocales,
      path: LocalizationConfig.translationFilePath,
      fallbackLocale: LocalizationConfig.defaultLocale,
      useFallbackTranslations: true,
      assetLoader: const CodegenLoader(),
      startLocale: LocalizationConfig.defaultLocale,
      child: App.instance,
    ),
  );
}

// 999885555
// Abdabd123@
