import 'package:flutter/material.dart';

import '../../../../core/core.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future<void>.delayed(const Duration(seconds: 1));
    if (PrefData.isSignedIn) {
      context.replaceRoute(const BaseRoute());
    } else {
      if (PrefData.isFirstTime) {
        context.replaceRoute(const OnboardingRoute());
      } else {
        context.replaceRoute(const SignRoute());
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: AssetsManager.images.logo.image(),
            ),
          );
        },
      ),
    );
  }
}
