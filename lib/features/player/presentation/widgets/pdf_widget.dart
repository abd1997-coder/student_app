import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

class PdfModel {
  String name, size, pageCount;
  PdfModel({required this.name, required this.pageCount, required this.size});
}

class PDFWidget extends StatelessWidget {
  final List<PdfModel> files = [
    PdfModel(name: "الجلسة الأولى", pageCount: " صفحة 25", size: "27ك.ب"),
    PdfModel(name: "الجلسة الأولى", pageCount: " صفحة 25", size: "27ك.ب"),
    PdfModel(name: "الجلسة الأولى", pageCount: " صفحة 25", size: "27ك.ب"),
  ];

  PDFWidget({super.key});

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
              'ملفات الدرس',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
          ),

          // Questions List
          Column(
            children:
                files.map((file) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Palette.primary.withOpacity(0.15),
                          blurRadius: 6,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        // Question and time
                        AssetsManager.svg.pdfIcon.svg(),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  file.name,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Palette.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "${file.size}",
                                      style: const TextStyle(
                                        color: Palette.darkGray,
                                        fontSize: 12,
                                      ),
                                    ),
                                    const Text(
                                      "|",
                                      style: TextStyle(
                                        color: Palette.darkGray,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      "${file.pageCount}",
                                      style: const TextStyle(
                                        color: Palette.darkGray,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
