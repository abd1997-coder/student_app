import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

class GlobalErrorWidget extends StatelessWidget {
  const GlobalErrorWidget({
    super.key,
    this.generalException,
    this.emptyItem,
    this.onPressed,
    this.isHorizontal = false,
  });

  final GeneralException? generalException;
  final String? emptyItem;
  final bool isHorizontal;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.space40),
      child: Column(
        children: <Widget>[
          Builder(
            builder: (BuildContext context) {
              if (isHorizontal) {
                return Row(
                  children: <Widget>[
                    // Image.asset(
                    //   AssetsManager.images.logo.path,
                    //   width: ResponsiveUtils.responsiveSize(
                    //     context,
                    //     mobile: 80,
                    //     tablet: 112,
                    //     desktop: 112,
                    //   ),
                    //   height: ResponsiveUtils.responsiveSize(
                    //     context,
                    //     mobile: 80,
                    //     tablet: 112,
                    //     desktop: 112,
                    //   ),
                    // ),
                    const SizedBox(width: Dimensions.space20),
                    Flexible(
                      child: Text(
                        errorMessage(
                          context,
                          generalException: generalException,
                        ),
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: context.bodySmall,
                      ),
                    ),
                  ],
                );
              } else {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    // Image.asset(
                    //   AssetsManager.images.logo.path,
                    //   width: ResponsiveUtils.responsiveSize(
                    //     context,
                    //     mobile: 112,
                    //     tablet: 140,
                    //     desktop: 140,
                    //   ),
                    //   height: ResponsiveUtils.responsiveSize(
                    //     context,
                    //     mobile: 112,
                    //     tablet: 140,
                    //     desktop: 140,
                    //   ),
                    // ),
                    const SizedBox(height: Dimensions.space20),
                    Text(
                      errorMessage(context, generalException: generalException),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: context.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              }
            },
          ),
          const SizedBox(height: Dimensions.space8),
          TextButton(onPressed: onPressed, child: const Text('Try Again')),
        ],
      ),
    );
  }

  String errorMessage(
    BuildContext context, {
    GeneralException? generalException,
  }) {
    if (generalException == null) {
      return context.tr(LocaleKeys.genericError);
    }
    if (generalException.message.isEmpty) {
      return context.tr(LocaleKeys.genericError);
    }
    return generalException.message;
  }
}
