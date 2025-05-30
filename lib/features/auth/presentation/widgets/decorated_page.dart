import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

class DecoratedPage extends StatelessWidget {
  const DecoratedPage({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(      
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetsManager.images.backgroundRegister.provider(),
        ),
      ),
      child: child,
    );
  }
}
