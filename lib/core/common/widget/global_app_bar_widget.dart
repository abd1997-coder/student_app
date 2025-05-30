import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

class GlobalAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GlobalAppBar({
    super.key,
    this.backButton = false,
    required this.title,
    this.centerTitle = true,
  });
  final bool backButton;
  final String title;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: Builder(
        builder: (BuildContext context) {
          if (backButton) {
            return IconButton(
              onPressed: context.maybePop,
              icon: const Icon(Icons.arrow_back_ios_new),
            );
          } else {
            return const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                Dimensions.space12,
                Dimensions.space8,
                0,
                Dimensions.space8,
              ),
              // child: AssetsManager.images.logo.image(),
            );
          }
        },
      ),
      title: Text(title, style: context.bodyLarge),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
