import 'package:flutter/material.dart';
import 'package:student_app/core/common/common.dart';
import 'package:student_app/core/managers/assets/assets.gen.dart';
import 'package:student_app/core/managers/theme/palette.dart';

class ViewsWidget extends StatefulWidget {
  const ViewsWidget({super.key});

  @override
  State<ViewsWidget> createState() => _ViewsWidgetState();
}

class _ViewsWidgetState extends State<ViewsWidget> {
    final List<Map<String, String>> _stories = const <Map<String, String>>[
    <String, String>{'label': 'حسومات', 'asset': 'assets/images/story1.png'},
    <String, String>{'label': 'جديدنا', 'asset': 'assets/images/story2.png'},
    <String, String>{
      'label': 'عن الاشتراك',
      'asset': 'assets/images/story3.png',
    },
    <String, String>{'label': 'نقاشات', 'asset': 'assets/images/story4.png'},
    <String, String>{'label': 'حسومات', 'asset': 'assets/images/story1.png'},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: _stories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (BuildContext context, int idx) {
          final Map<String, String> story = _stories[idx];
          return Column(
            children: <Widget>[
              CircleAvatar(
                radius: 36,
                backgroundImage: AssetsManager.images.temp.temp1.provider(),
              ),
              const SizedBox(height: 8),
              Text(
                story['label']!,
                style: context.labelLarge?.copyWith(
                  fontSize: 12,
                  color: Palette.black,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}