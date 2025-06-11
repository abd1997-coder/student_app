import 'package:flutter/material.dart';
import 'package:student_app/core/common/widget/appWidget/custom_photo_widget.dart';
import 'package:student_app/features/home/data/model/home_model.dart';

class TeachersWidget extends StatefulWidget {
  const TeachersWidget({super.key, required this.teachers});
  final List<TeacherData>? teachers;
  @override
  State<TeachersWidget> createState() => _TeachersWidgetState();
}

class _TeachersWidgetState extends State<TeachersWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: widget.teachers?.length ?? 0,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (BuildContext context, int idx) {
          return CustomPhotoWidget(
            name: widget.teachers?[idx].fullName,
            image: widget.teachers?[idx].image,
          );
        },
      ),
    );
  }
}
