// هذا هو الكود الكامل لملف part_widget.dart
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/common/common.dart';
import 'package:student_app/core/common/models/unit_model.dart';
import 'package:student_app/core/common/models/video_model.dart';
import 'package:student_app/core/common/widget/appWidget/chapter_widget.dart'; // <--- تأكد من هذا الاستيراد
import 'package:student_app/core/common/widget/appWidget/session_widget.dart';
import 'package:student_app/core/common/widget/appWidget/custom_photo_widget.dart';
import 'package:student_app/core/common/widget/bottomSheets/material_purchase_sheet_content.dart';
import 'package:student_app/core/common/widget/price_widget.dart'
    show PriceWidget;
import 'package:student_app/core/core.dart';
import 'package:student_app/core/managers/theme/palette.dart';
import 'package:student_app/core/pruches/bloc/pruches_bloc.dart';
import 'dart:async';

/// Widget لعرض قائمة عناصر مع staggered animation (ظهور/إخفاء متتالي مع تلاشي)
class StaggeredAnimatedList<T> extends StatefulWidget {
  final List<T> items;
  final Widget Function(T item) itemBuilder;
  final Duration initialDelay;
  final Duration itemDelay;
  final bool visible; // <--- هذا المفتاح هو الذي سيتحكم في تشغيل الـ animation
  const StaggeredAnimatedList({
    super.key,
    required this.items,
    required this.itemBuilder,
    this.initialDelay = const Duration(milliseconds: 0),
    this.itemDelay = const Duration(milliseconds: 80),
    this.visible = true,
  });

  @override
  State<StaggeredAnimatedList<T>> createState() =>
      _StaggeredAnimatedListState<T>();
}

class _StaggeredAnimatedListState<T> extends State<StaggeredAnimatedList<T>> {
  late List<bool> _showItems;
  Key _listKey = UniqueKey(); // مفتاح لمراقبة التغييرات في عدد العناصر
  Timer? _animationTimer; // لمراقبة الـ timer الجاري

  @override
  void initState() {
    super.initState();
    // عند التهيئة، يجب أن تكون العناصر مخفية إذا كان الـ Widget غير مرئي
    _showItems = List.filled(widget.items.length, false);
    if (widget.visible && widget.items.isNotEmpty) {
      _runShowAnimation();
    }
  }

  @override
  void didUpdateWidget(covariant StaggeredAnimatedList<T> oldWidget) {
    super.didUpdateWidget(oldWidget);

    // إذا تغيرت حالة الظهور من غير مرئي إلى مرئي (توسيع)
    if (widget.visible && !oldWidget.visible) {
      _cancelCurrentAnimation(); // إلغاء أي animation قديم قبل البدء بجديد
      _showItems = List.filled(widget.items.length, false); // إعادة تهيئة
      if (widget.items.isNotEmpty) {
        _runShowAnimation(); // تشغيل الـ animation
      }
    }
    // إذا تغيرت حالة الظهور من مرئي إلى غير مرئي (تصغير)
    else if (!widget.visible && oldWidget.visible) {
      _cancelCurrentAnimation(); // إلغاء أي animation قديم قبل البدء بجديد
      if (widget.items.isNotEmpty) {
        _runHideAnimation(); // <--- تشغيل الـ animation العكسي هنا
      }
    }
    // إذا كان مرئياً بالفعل وتغير عدد العناصر (تغيرت القائمة)
    else if (widget.visible && widget.items.length != oldWidget.items.length) {
      _cancelCurrentAnimation();
      _showItems = List.filled(widget.items.length, false); // إعادة تهيئة
      if (widget.items.isNotEmpty) {
        _runShowAnimation();
      }
    }
    // إذا كان مرئياً ولكن الـ animation لم يبدأ بعد (لم يتم إظهار أي عناصر)
    else if (widget.visible &&
        !_showItems.any((e) => e) &&
        widget.items.isNotEmpty) {
      _cancelCurrentAnimation();
      _runShowAnimation();
    }

    // تحديث المفتاح إذا تغير عدد العناصر لضمان إعادة بناء Column بشكل صحيح
    if (widget.items.length != oldWidget.items.length) {
      _listKey = UniqueKey();
    }
  }

  // دالة لإلغاء الـ animation الجاري
  void _cancelCurrentAnimation() {
    _animationTimer?.cancel();
    _animationTimer = null;
  }

  Future<void> _runShowAnimation() async {
    // التأكد من عدم تشغيل الـ animation إذا كانت العناصر مخفية أو تم إلغاء الـ widget
    if (!widget.visible || !mounted || widget.items.isEmpty) return;

    await Future.delayed(widget.initialDelay);
    for (int i = 0; i < widget.items.length; i++) {
      if (!mounted || !widget.visible)
        return; // توقف إذا تم إلغاء الـ widget أو أصبح غير مرئي
      if (i < _showItems.length && !_showItems[i]) {
        setState(() => _showItems[i] = true);
      }
      await Future.delayed(widget.itemDelay);
    }
  }

  Future<void> _runHideAnimation() async {
    // التأكد من أن الـ animation لا يعمل في الخلفية إذا أصبح مرئياً
    if (widget.visible || !mounted || widget.items.isEmpty) return;

    // تشغيل الـ animation العكسي من النهاية إلى البداية
    for (int i = widget.items.length - 1; i >= 0; i--) {
      if (!mounted || widget.visible)
        return; // توقف إذا تم إلغاء الـ widget أو أصبح مرئياً
      if (i < _showItems.length && _showItems[i]) {
        // لا تحدث حالة عنصر غير مرئي بالفعل
        setState(() => _showItems[i] = false);
      }
      await Future.delayed(widget.itemDelay);
    }
  }

  @override
  void dispose() {
    _cancelCurrentAnimation();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // استخدام Key لـ Column لإجباره على إعادة البناء عند تغير العناصر
    return Column(
      key: _listKey, // إضافة مفتاح هنا
      children: List.generate(widget.items.length, (i) {
        return AnimatedOpacity(
          // التأكد من أن _showItems[i] موجودة وأنها صحيحة
          opacity: _showItems.length > i && _showItems[i] ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 300),
          child:
              _showItems.length > i && _showItems[i]
                  ? widget.itemBuilder(widget.items[i])
                  : const SizedBox.shrink(),
        );
      }),
    );
  }
}

class PartWidget extends StatefulWidget {
  final Unit? unit;
  final VoidCallback onTogglePart;
  final ValueChanged<Unit> onToggleChapter;
  final ValueChanged<Unit> onToggleLesson;
  final Color cardColor;
  final Color fontColor;
  final bool isPaid;
  final PruchesBloc? pruchesBloc;
  final bool myLeason;
  const PartWidget({
    super.key,
    required this.unit,
    required this.onTogglePart,
    required this.onToggleChapter,
    required this.onToggleLesson,
    this.cardColor = Palette.primary,
    this.fontColor = Palette.white,
    this.isPaid = false,
    this.pruchesBloc,
    this.myLeason = false,
  });

  @override
  State<PartWidget> createState() => _PartWidgetState();
}

class _PartWidgetState extends State<PartWidget> {
  bool _shouldShowContent = false;
  bool _wasExpanded = false;

  @override
  void didUpdateWidget(covariant PartWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    final isExpanded = widget.unit?.isExpanded ?? false;

    if (isExpanded && !_wasExpanded) {
      // إذا تم التوسع للتو، أظهر المحتوى فورًا لتبدأ StaggeredAnimatedList الـ animation
      setState(() {
        _shouldShowContent = true;
      });
    } else if (!isExpanded && _wasExpanded) {
      // إذا تم التصغير للتو، احسب مدة الـ animation العكسي وأخفي المحتوى بعدها
      final nVideos = widget.unit?.videos?.length ?? 0;
      final nUnits = widget.unit?.units?.length ?? 0;
      final nTotalItems = nVideos + nUnits;
      const int itemDelayMs = 50; // نفس قيمة itemDelay في StaggeredAnimatedList
      final animationDuration = const Duration(
        milliseconds: 300,
      ); // مدة AnimatedOpacity

      // حساب المدة الكلية لانتهاء الـ hide animation لكل العناصر
      final totalHideDuration = Duration(
        milliseconds:
            (nTotalItems > 0 ? nTotalItems : 1) * itemDelayMs +
            animationDuration.inMilliseconds,
      );

      Future.delayed(totalHideDuration, () {
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
  void initState() {
    super.initState();
    _wasExpanded = widget.unit?.isExpanded ?? false;
    _shouldShowContent = _wasExpanded;
  }

  @override
  Widget build(BuildContext context) {
    final unit = widget.unit;
    final bool isContentExpanded = unit?.isExpanded ?? false;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3),
      child: Column(
        children: <Widget>[
          Card(
            margin: const EdgeInsets.only(bottom: 12),
            color: widget.cardColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            elevation: 2,
            child: InkWell(
              onTap: widget.onTogglePart,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 14,
                ),
                child: Row(
                  children: <Widget>[
                    const SizedBox(width: 8),
                    CustomPhotoWidget(
                      hideName: true,
                      size: 80,
                      image: unit?.image,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            unit?.name ?? "-",
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium!.copyWith(
                              color: widget.fontColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: <Widget>[
                              AssetsManager.svg.graduationCap.svg(
                                color: widget.fontColor,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                "Teacher",
                                style: Theme.of(context).textTheme.bodySmall!
                                    .copyWith(color: widget.fontColor),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          (unit?.units!.isEmpty ?? true)
                              ? const SizedBox()
                              : Row(
                                children: <Widget>[
                                  const Icon(
                                    Icons.play_circle_filled,
                                    size: 15,
                                    color: Palette.white,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    unit?.units?.length.toString() ?? '',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: widget.fontColor),
                                  ),
                                ],
                              ),
                        ],
                      ),
                    ),
                    (GlobalFunctions.hasUnviewableVideo(unit!))
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
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            child: PriceWidget(point: "${unit?.price}"),
                          ),
                        )
                        : Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Palette.white.withValues(alpha: 0.6),
                          ),
                          child: Text(
                            "تم الشراء ",
                            style: TextStyle(
                              fontSize: 14,
                              color: widget.fontColor,
                            ),
                          ),
                        ),
                    Visibility(
                      visible: (unit?.isAvailable ?? false),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.6),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: Icon(
                          unit!.isExpanded
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: Palette.primary,
                          weight: 4,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (_shouldShowContent &&
              (unit!.videos!.isNotEmpty || unit!.units!.isNotEmpty))
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                border: Border(
                  left: BorderSide(color: Colors.grey, width: 1),
                  right: BorderSide(color: Colors.grey, width: 1),
                  bottom: BorderSide(color: Colors.grey, width: 1),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
              child: Column(
                children: [
                  StaggeredAnimatedList<VideoModel>(
                    items: unit?.videos ?? [],
                    visible: isContentExpanded, // <--- تمرير isContentExpanded
                    itemDelay: const Duration(milliseconds: 80),
                    itemBuilder:
                        (VideoModel video) => SessionWidget(
                          video: video,
                          myLeason: widget.myLeason,
                          pruchesBloc: widget.pruchesBloc!,
                          teacherName:
                              unit?.teachers?.first.user?.fullName ?? "",
                        ),
                  ),
                  StaggeredAnimatedList<Unit>(
                    items: unit?.units ?? [],
                    visible: isContentExpanded, // <--- تمرير isContentExpanded
                    itemDelay: const Duration(milliseconds: 80),
                    itemBuilder:
                        (Unit unit) => ChapterWidget(
                          pruchesBloc: widget.pruchesBloc,
                          unit: unit,
                          myLeason: widget.myLeason,
                          onToggleChapter:
                              () => widget.onToggleChapter(
                                unit,
                              ), // <--- التأكد من تمرير الوحدة
                          onToggleLesson:
                              (Unit lesson) => widget.onToggleLesson(lesson),
                        ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
