import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

void showTeachersSheet({required BuildContext context}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: false,
    showDragHandle: false,
    backgroundColor: Colors.transparent,
    builder: (_) => const TeachersSheetContent(),
  );
}

class TeachersSheetContent extends StatefulWidget {
  const TeachersSheetContent({super.key});

  @override
  State<TeachersSheetContent> createState() => _TeachersSheetContentState();
}

class _TeachersSheetContentState extends State<TeachersSheetContent> {
  bool withTests = false;
  int selectedTap = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 700,
            margin: const EdgeInsets.only(top: 10),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  alignment: AlignmentDirectional.topEnd,
                  child: InkWell(
                    onTap: () {
                      context.router.maybePop();
                    },
                    child: const Icon(
                      Icons.close,
                      color: Palette.darkGray,
                      size: 20,
                    ),
                  ),
                ),
                // --- the coin icon at top ---
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AssetsManager.svg.graduationCap.svg(
                      color: Palette.primary,
                      width: 20,
                    ),
                    const Text(
                      "المدرسين",
                      style: TextStyle(color: Palette.primary, fontSize: 25),
                    ),
                  ],
                ),

                // --- title ---
                const SizedBox(height: 24),
                // teachers
                ListView.builder(
                  itemCount: 4,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 4 , horizontal: 16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              AssetsManager.svg.bookIcon.svg(),
                              const Text(
                                "الوحدة الأولى",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Palette.primary,
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: <Widget>[
                              SizedBox(width: 25),
                              Text(
                                "أ.محمد بكر شامدين",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Palette.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
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
