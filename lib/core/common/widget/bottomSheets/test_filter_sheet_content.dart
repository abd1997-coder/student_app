import 'package:flutter/material.dart';
import 'package:student_app/core/core.dart';

void testFilterBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    showDragHandle: false,
    builder: (_) => const TestFilterBottomSheet(),
  );
}

class TestFilterBottomSheet extends StatefulWidget {
  const TestFilterBottomSheet({super.key});

  @override
  State<TestFilterBottomSheet> createState() => _TestFilterBottomSheetState();
}

class _TestFilterBottomSheetState extends State<TestFilterBottomSheet> {
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
            padding: const EdgeInsets.fromLTRB(16, 48, 16, 16),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // timer section
                const SizedBox(height: 8),
                const Row(
                  children: <Widget>[
                    Icon(Icons.access_time, color: Palette.stongPrimary),
                    SizedBox(width: 10),
                    Text(
                      "الوقت",
                      style: TextStyle(
                        color: Palette.stongPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 25),
                    const Icon(Icons.alarm, color: Palette.stongPrimary),
                    const Text(
                      "مؤقت",
                      style: TextStyle(
                        color: Palette.stongPrimary,
                        fontSize: 15,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Radio(
                          value: "timer",
                          groupValue: selectedTimerType,
                          onChanged: (String? value) {
                            setState(() {
                              selectedTimerType = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  children: <Widget>[
                    const SizedBox(width: 25),
                    const Icon(Icons.alarm_add, color: Palette.stongPrimary),
                    const Text(
                      "عداد",
                      style: TextStyle(
                        color: Palette.stongPrimary,
                        fontSize: 15,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Radio(
                          value: "conter",
                          groupValue: selectedTimerType,
                          onChanged: (String? value) {
                            setState(() {
                              selectedTimerType = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                //
                (selectedTimerType != "conter")
                    ? const SizedBox()
                    : Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        _buildTimeField(hourController),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          child: const Text(
                            ":",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        _buildTimeField(minuteController),
                      ],
                    ),
                // correct section
                const SizedBox(height: 8),
                const Row(
                  children: <Widget>[
                    Icon(Icons.check, color: Palette.stongPrimary),
                    SizedBox(width: 10),
                    Text(
                      "التصحيح",
                      style: TextStyle(
                        color: Palette.stongPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 25),
                    const Icon(
                      Icons.mobile_friendly,
                      color: Palette.stongPrimary,
                    ),
                    const Text(
                      "الكتروني",
                      style: TextStyle(
                        color: Palette.stongPrimary,
                        fontSize: 15,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Radio(
                          value: "electronic",
                          groupValue: selectedCorrectType,
                          onChanged: (String? value) {
                            setState(() {
                              selectedCorrectType = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 25),
                    const Icon(
                      Icons.qr_code_scanner,
                      color: Palette.stongPrimary,
                    ),
                    const Text(
                      "ورقي",
                      style: TextStyle(
                        color: Palette.stongPrimary,
                        fontSize: 15,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Radio(
                          value: "paper",
                          groupValue: selectedCorrectType,
                          onChanged: (String? value) {
                            setState(() {
                              selectedCorrectType = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                ("paper" != selectedCorrectType)
                    ? SizedBox()
                    : Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      color: Palette.primary.withValues(alpha: 0.2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            height: 40,
                            child: const Text(
                              "صور ورقة الأتمتة بعد الانتهاء من الحل ",
                              style: TextStyle(
                                color: Palette.stongPrimary,
                                fontSize: 13,
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: Palette.primary,
                              borderRadius: BorderRadius.all(
                                Radius.circular(18),
                              ),
                            ),
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.sim_card_download_outlined,
                                  color: Palette.white,
                                ),
                                Text(
                                  "تحميل ملف الأتمتة",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Palette.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          Container(
            width: 64,
            height: 64,
            decoration: const BoxDecoration(
              color: Palette.primary,
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            child: const Icon(Icons.tune, color: Palette.white, size: 37),
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
