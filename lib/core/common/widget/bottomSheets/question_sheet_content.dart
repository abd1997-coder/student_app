import 'package:flutter/material.dart';
import 'package:student_app/core/common/widget/widget.dart';
import 'package:student_app/core/core.dart';

void questionSheet({required BuildContext context}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: false,
    showDragHandle: false,
    backgroundColor: Colors.transparent,
    builder: (_) => const QuestionSheetContent(),
  );
}

class QuestionSheetContent extends StatelessWidget {
  const QuestionSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 16),
                  const Text(
                    'ماهو سؤالك ؟',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: 'اكتب سؤالك هنا .........',
                      filled: true,
                      hintStyle: const TextStyle(fontSize: 14),
                      fillColor: Colors.grey.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextButton(
                    onPressed: () {
                      // Add image insert logic
                    },
                    child: const Text(
                      'إدراج صورة',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const SizedBox(
                    width: double.infinity,
                    child: GlobalButton(
                      backgroundColor: Palette.blue,
                      surfaceTintColor: Palette.blue,
                      child: Text(
                        "ارسال",
                        style: TextStyle(
                          color: Palette.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 64,
          height: 64,
          child: CircleAvatar(
            radius: 32,
            backgroundColor: Palette.white,
            child: Icon(Icons.help_outline, size: 50, color: Palette.blue),
          ),
        ),
      ],
    );
  }
}
