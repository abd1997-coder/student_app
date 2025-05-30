import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

class PhotosWidget extends StatelessWidget {
  PhotosWidget({super.key});
  final List<String> imageUrls = [
    // Replace with your image asset paths or URLs
    AssetsManager.images.temp.temp1.path,
    AssetsManager.images.temp.temp2.path,
    AssetsManager.images.temp.temp3.path,
  ];

  final String imageTitle = "تعريف الأعداد العقدية";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              'صور اللوح',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          // GridView
          GridView.builder(
            itemCount: imageUrls.length,
            shrinkWrap: true, // Important for SliverToBoxAdapter
            physics:
                const NeverScrollableScrollPhysics(), // Prevents nested scroll
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 8,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  // Image Container
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(imageUrls[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // Download Icon
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        shape: BoxShape.circle,
                      ),
                      child: AssetsManager.svg.downloadIcon.svg(),
                    ),
                  ),

                  // Title Overlay
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 8,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(12),
                        ),
                      ),
                      child: Text(
                        imageTitle,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
