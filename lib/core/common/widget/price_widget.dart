import 'package:flutter/material.dart';
import 'package:student_app/core/managers/assets/assets.gen.dart';
import 'package:student_app/core/managers/theme/palette.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({super.key, required this.point});
  final String point;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
      decoration: BoxDecoration(
        color: Palette.primary,
        borderRadius: BorderRadius.circular(32),
        boxShadow: const <BoxShadow>[
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AssetsManager.svg.priceIcon.svg(),
          const SizedBox(width: 8),
           Text(
            '$point نقطة',
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),

          // You can replace this Icon with Image.asset or Image.network
        ],
      ),
    );
  }
}
