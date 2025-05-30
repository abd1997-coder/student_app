import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';
import 'package:y_player/y_player.dart';

void qualitySheet({
  required BuildContext context,
  required List<QualityOption> qualities,
  required Function(QualityOption) onQualitySelected,
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: false,
    showDragHandle: false,
    backgroundColor: Colors.transparent,
    builder:
        (_) => QualitySheetContent(
          qualities: qualities,
          onQualitySelected: onQualitySelected,
        ),
  );
}

class QualitySheetContent extends StatelessWidget {
  final List<QualityOption> qualities;
  final Function(QualityOption) onQualitySelected;

  const QualitySheetContent({
    Key? key,
    required this.qualities,
    required this.onQualitySelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.white,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'اختر جودة الفيديو للتحميل',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          ...qualities
              .map(
                (quality) => ListTile(
                  title: Text('${quality.height}p'),
                  onTap: () {
                    onQualitySelected(quality);
                    Navigator.pop(context);
                  },
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
