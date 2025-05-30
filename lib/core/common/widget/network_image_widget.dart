import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_svg_image/cached_network_svg_image.dart';
import 'package:flutter/material.dart';

class NetworkImageWidget extends StatelessWidget {
  const NetworkImageWidget({
    super.key,
    required this.url,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.radius = 0,
  });

  final String url;
  final double? width;
  final double? height;
  final double radius;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child:
          url.toLowerCase().endsWith('.svg')
              ? CachedNetworkSVGImage(
                url,
                width: width,
                height: height,
                fit: fit,
                placeholder: const Center(child: CircularProgressIndicator()),
                // errorWidget: Image.asset(
                //   AssetsManager.images.placeHolder.path,
                //   fit: BoxFit.cover,
                //   height: double.maxFinite,
                //   width: double.maxFinite,
                // )
              )
              : CachedNetworkImage(
                width: width,
                height: height,
                fit: fit,
                imageUrl: url,
                progressIndicatorBuilder: (
                  BuildContext context,
                  String url,
                  DownloadProgress downloadProgress,
                ) {
                  return Center(
                    child: CircularProgressIndicator(
                      value: downloadProgress.progress,
                    ),
                  );
                },
                // errorWidget: (BuildContext context, _, Object error) {
                //   return Image.asset(
                //     AssetsManager.images.placeHolder.path,
                //     fit: BoxFit.cover,
                //     height: double.maxFinite,
                //     width: double.maxFinite,
                //   );
                // },
              ),
    );
  }
}
