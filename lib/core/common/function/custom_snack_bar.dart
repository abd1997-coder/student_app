import 'package:flutter/material.dart';

import '../../core.dart';

void showSnackBar({
  required BuildContext context,
  required String? message,
  bool isError = false,
}) {
  final SnackBar snackBar = SnackBar(
    behavior: SnackBarBehavior.floating,
    backgroundColor:
        isError
            ? context.theme.colorScheme.error
            : context.theme.colorScheme.surface,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    content: Row(
      children: <Widget>[
        // AssetsManager.images.logo.image(width: 40, height: 40),
        const SizedBox(width: 5),
        Expanded(
          child: Text(
            message ?? LocaleKeys.genericError.tr(),
            maxLines: 3,
            style: context.bodySmall?.copyWith(
              fontWeight: FontWeight.w700,
              color:
                  isError ? Colors.white : context.theme.colorScheme.secondary,
            ),
          ),
        ),
      ],
    ),
  );

  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(snackBar);
}
