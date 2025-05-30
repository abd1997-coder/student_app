import 'package:flutter/material.dart';

void speedSheet({required BuildContext context}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: false,
    showDragHandle: false,
    backgroundColor: Colors.transparent,
    builder: (_) => const SpeedSheetContent(),
  );
}

class SpeedSheetContent extends StatefulWidget {
  const SpeedSheetContent({super.key});

  @override
  State<SpeedSheetContent> createState() => _SpeedSheetContentState();
}

class _SpeedSheetContentState extends State<SpeedSheetContent> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 300,
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
                  "السرعة ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              // quality
              Row(
                children: [
                  Radio<String>(
                    value: 'x0.75',
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    },
                  ),
                  const SizedBox(width: 10),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: const Text(
                      "x0.75",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Radio<String>(
                    value: 'noraml',
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    },
                  ),
                  const SizedBox(width: 10),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: const Text(
                      "عادية",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Radio<String>(
                    value: '1.25x',
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    },
                  ),
                  const SizedBox(width: 10),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: const Text(
                      "1.25x",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Radio<String>(
                    value: '1.5x',
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    },
                  ),
                  const SizedBox(width: 10),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: const Text(
                      "1.5x ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
