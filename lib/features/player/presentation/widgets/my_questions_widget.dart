import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

class MyQuestionsWidget extends StatelessWidget {
  final List<String> questions = [
    "ماذا يفعل النواس المرن في حياة ياسين وسمير",
    "ماذا يفعل النواس المرن في حياة ياسين وسمير",
    "ماذا يفعل النواس المرن في حياة ياسين وسمير",
  ];

  MyQuestionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              'أسئلتي',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
          ),

          // Questions List
          Column(
            children:
                questions.map((question) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          blurRadius: 6,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        // Question and time
                        
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                question,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Palette.black,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                        ),

                        // Purple icon container
                        Container(
                          width: 40,
                          height: 60,
                          decoration: const BoxDecoration(
                            color: Palette.primary,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12),
                              topLeft: Radius.circular(12),
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
          ),
        ],
      ),
    );
  }
}
