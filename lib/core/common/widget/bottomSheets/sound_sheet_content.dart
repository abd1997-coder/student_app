import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:student_app/core/managers/theme/theme.dart';

void soundSheet({required BuildContext context}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: false,
    showDragHandle: false,
    backgroundColor: Colors.transparent,
    builder: (_) => const SoundSheetContent(),
  );
}

class SoundSheetContent extends StatefulWidget {
  const SoundSheetContent({super.key});

  @override
  State<SoundSheetContent> createState() => _SoundSheetContentState();
}

class _SoundSheetContentState extends State<SoundSheetContent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 250,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // --- title ---
                const SizedBox(height: 24),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: const Text(
                    "الصوت ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                // sound
                SleekCircularSlider(
                  min: 0,
                  max: 100,
                  initialValue: 50,

                  innerWidget: (double percentage) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.volume_up, color: Palette.primary),
                        Text(percentage.toInt().toString()),
                      ],
                    );
                  },
                  onChange: (double value) {
                    // callback providing a value while its being changed (with a pan gesture)
                  },
                  onChangeStart: (double startValue) {
                    // callback providing a starting value (when a pan gesture starts)
                  },
                  onChangeEnd: (double endValue) {
                    // ucallback providing an ending value (when a pan gesture ends)
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
