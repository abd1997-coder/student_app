import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

void testTypeBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    showDragHandle: false,
    builder: (_) => const TestTypeBottomSheet(),
  );
}

class TestTypeBottomSheet extends StatefulWidget {
  const TestTypeBottomSheet({super.key});

  @override
  State<TestTypeBottomSheet> createState() => _TestTypeBottomSheetState();
}

class _TestTypeBottomSheetState extends State<TestTypeBottomSheet> {
  final TextEditingController hourController = TextEditingController(
    text: '12',
  );
  final TextEditingController minuteController = TextEditingController(
    text: '59',
  );
  String selectedTimerType = "";
  String selectedCorrectType = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 32),
            padding: const EdgeInsets.fromLTRB(25, 20, 25, 16),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // timer section
                SizedBox(height: 25),
                Row(
                  children: <Widget>[
                    Text(
                      "1. اختبار شامل للمادة",
                      style: TextStyle(
                        color: Palette.stongPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  children: <Widget>[
                    Text(
                      "2. حدد درس لاختباره",
                      style: TextStyle(
                        color: Palette.stongPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  children: <Widget>[
                    Text(
                      "3. الاسئلة المحفوظة",
                      style: TextStyle(
                        color: Palette.stongPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  children: <Widget>[
                    Text(
                      "4. البحث عن سؤال",
                      style: TextStyle(
                        color: Palette.stongPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
          SizedBox(
            width: 85,
            height: 85,
            child: AssetsManager.svg.testIcon.svg(),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeField(TextEditingController controller) {
    return SizedBox(
      width: 50,
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: const TextStyle(color: Palette.primary, fontSize: 18),
        decoration: InputDecoration(
          isDense: true,
          contentPadding: const EdgeInsets.all(8),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Palette.primary),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Palette.primary, width: 2),
          ),
        ),
      ),
    );
  }
}
