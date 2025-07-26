// هذا الكود يجب أن يكون في ملف chapter_widget.dart الخاص بك
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/common/common.dart';
import 'package:student_app/core/common/models/unit_model.dart';
import 'package:student_app/core/common/models/video_model.dart';
import 'package:student_app/core/common/widget/appWidget/part_widget.dart';
import 'package:student_app/core/common/widget/appWidget/session_widget.dart';
import 'package:student_app/core/common/widget/bottomSheets/material_purchase_sheet_content.dart';
import 'package:student_app/core/common/widget/price_widget.dart'
    show PriceWidget;
import 'package:student_app/core/core.dart';
import 'package:student_app/core/managers/theme/palette.dart';
import 'package:student_app/core/pruches/bloc/pruches_bloc.dart';
import 'dart:async';

// تأكد من استيراد StaggeredAnimatedList من المسار الص

class ChapterWidget extends StatefulWidget {
  // <--- تم تغييرها إلى StatefulWidget
  final Unit? unit;
  final VoidCallback onToggleChapter;
  final ValueChanged<Unit> onToggleLesson;
  final PruchesBloc? pruchesBloc;
  final bool myLeason;
  const ChapterWidget({
    super.key,
    required this.unit,
    required this.onToggleChapter,
    required this.onToggleLesson,
    this.pruchesBloc,
    this.myLeason = false,
  });

  @override
  State<ChapterWidget> createState() => _ChapterWidgetState();
}

class _ChapterWidgetState extends State<ChapterWidget> {
  // نضيف حالة داخلية للتحكم بظهور المحتوى الداخلي للـ ChapterWidget
  // هذا سيسمح لنا بتشغيل الـ animation بشكل متسلسل
  bool _shouldShowContent = false;
  bool _wasExpanded = false; // لمراقبة التغيير في حالة التوسع

  @override
  void initState() {
    super.initState();
    _wasExpanded = widget.unit?.isExpanded ?? false;
    _shouldShowContent = _wasExpanded;
  }

  @override
  void didUpdateWidget(covariant ChapterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    final isExpanded = widget.unit?.isExpanded ?? false;

    if (isExpanded && !_wasExpanded) {
      // إذا تم التوسع للتو
      setState(() {
        _shouldShowContent = true;
      });
    } else if (!isExpanded && _wasExpanded) {
      // إذا تم التصغير للتو، يمكننا إضافة تأخير قبل إخفاء المحتوى تمامًا
      // للسماح لـ StaggeredAnimatedList بإنهاء الـ animation الخاص به
      final nVideos = widget.unit?.videos?.length ?? 0;
      final nUnits = widget.unit?.units?.length ?? 0;
      final nTotal = nVideos + nUnits;
      const int itemDelayMs = 80; // نفس قيمة itemDelay في StaggeredAnimatedList
      final hideDuration = Duration(
        milliseconds:
            (nTotal > 0 ? nTotal : 1) * itemDelayMs +
            300, // +300ms لـ AnimatedOpacity
      );

      // بعد انتهاء الـ animation في StaggeredAnimatedList، أخفي المحتوى
      Future.delayed(hideDuration, () {
        if (mounted && !(widget.unit?.isExpanded ?? false)) {
          setState(() {
            _shouldShowContent = false;
          });
        }
      });
    }
    _wasExpanded = isExpanded;
  }

  @override
  Widget build(BuildContext context) {
    final unit = widget.unit;
    // التأكد من أن 'visible' الخاص بـ StaggeredAnimatedList يستقبل قيمة isExpanded
    // للوحدة الحالية
    final bool isContentExpanded = unit?.isExpanded ?? false;

    return Column(
      children: <Widget>[
        Card(
          margin: const EdgeInsets.only(bottom: 8),
          color: const Color(0xffE0C7FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: InkWell(
            onTap:
                widget.onToggleChapter, // <--- هذه الدالة ستغير unit.isExpanded
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          unit?.name ?? "",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Row(
                          children: [
                            const Icon(
                              Icons.play_circle_rounded,
                              color: Palette.white,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '${unit!.videos?.length}',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ((GlobalFunctions.hasUnviewableVideo(unit!)))
                      ? InkWell(
                        onTap: () {
                          showMaterialPurchaseSheet(
                            context: context,
                            objectNmae: "الوحدة",
                            balance: PrefData.getUserBalance() ?? '0',
                            cost: unit?.price ?? "*",
                            onClickBuy: () {
                              context.router.maybePop();
                              widget.pruchesBloc!.add(
                                PruchesEvent.buyMaterial(
                                  unit?.id ?? '---',
                                  PruchesType.unit,
                                ),
                              );
                            },
                          );
                        },
                        child: PriceWidget(point: "${unit?.price}"),
                      )
                      : const SizedBox(),
                  Icon(
                    unit!
                            .isExpanded // <--- هذا هو الشرط الذي يعتمد عليه الـ UI
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ),
        ),
        // استخدم _shouldShowContent هنا للتحكم بظهور المحتوى الداخلي
        if (_shouldShowContent) // <--- هذا الشرط يتحكم بظهور الـ Column بأكمله
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            margin: const EdgeInsets.only(bottom: 12),
            child: Column(
              // <--- لا حاجة لـ AnimatedSize هنا
              children: [
                StaggeredAnimatedList<VideoModel>(
                  items: unit?.videos ?? [],
                  visible: isContentExpanded, // <--- تمرير isContentExpanded
                  itemBuilder:
                      (VideoModel video) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 2,
                              height: 12,
                              color: Colors.grey,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                            ),
                            SessionWidget(
                              video: video,
                              teacherName:
                                  unit?.teachers?.first.user?.fullName ?? "",
                              myLeason: widget.myLeason,
                              pruchesBloc: widget.pruchesBloc,
                            ),
                          ],
                        ),
                      ),
                ),
                // إذا كان هناك وحدات متداخلة (دروس داخل دروس)
                if (unit!.units!.isNotEmpty)
                  StaggeredAnimatedList<Unit>(
                    items: unit?.units ?? [],
                    visible: isContentExpanded, // <--- تمرير isContentExpanded
                    itemBuilder:
                        (Unit nestedUnit) => ChapterWidget(
                          // <--- recursive call
                          pruchesBloc: widget.pruchesBloc,
                          unit: nestedUnit,
                          myLeason: widget.myLeason,
                          // تمرير دالة onToggleChapter التي ستغير isExpanded للوحدة المتداخلة
                          onToggleChapter: () => widget.onToggleChapter(),
                          onToggleLesson:
                              (lesson) => widget.onToggleLesson(lesson),
                        ),
                  ),
              ],
            ),
          ),
      ],
    );
  }
}
