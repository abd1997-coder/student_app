import 'package:flutter/material.dart';
import 'package:student_app/core/common/widget/subject_widget.dart';
import 'package:student_app/core/core.dart';
import 'package:student_app/features/home/data/model/home_model.dart';

class SubjectsWidget extends StatelessWidget {
  const SubjectsWidget({super.key, required this.list});
  final List<MaterialData> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              context.router.push(
                MaterialDetailRoute(id: list[index].id ?? ""),
              );
            },
            child: SubjectWidget(
              title: list[index].name ?? '-',
              videosCount: list[index].videosCount ?? 0,
              image: list[index].image ?? '-',
            ),
          );
        },
      ),
    );
  }
}
