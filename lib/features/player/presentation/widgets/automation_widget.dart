import 'package:flutter/material.dart';
import 'package:student_app/core/managers/managers.dart';

class AutomationWidget extends StatefulWidget {
  const AutomationWidget({super.key});

  @override
  State<AutomationWidget> createState() => _AutomationWidgetState();
}

class _AutomationWidgetState extends State<AutomationWidget> {
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('الاتمتة', style: TextStyle(fontWeight: FontWeight.bold)),

        Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Palette.stongPrimary,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Column(
            children: [
              Container(
                height: 45,
                alignment: Alignment.center,
                child: const Text(
                  "ما هو العامل الذي يؤثر على ارتفاع نواس المرن؟",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Palette.white,
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Palette.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('كتلة النواس '),
                              Radio<String>(
                                value: 'Option $index',
                                groupValue: selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    selectedValue = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                          (index != 2) ? Divider() : SizedBox(),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 45,
                alignment: Alignment.center,
                child: const Text(
                  "تصحيح",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Palette.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
