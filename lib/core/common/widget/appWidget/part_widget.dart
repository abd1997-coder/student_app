import 'package:flutter/material.dart';
import 'package:student_app/core/common/models/unit_model.dart';
import 'package:student_app/core/common/models/video_model.dart';
import 'package:student_app/core/common/widget/appWidget/chapter_widget.dart';
import 'package:student_app/core/common/widget/appWidget/session_widget.dart';
import 'package:student_app/core/common/widget/appWidget/custom_photo_widget.dart';
import 'package:student_app/core/common/widget/bottomSheets/material_purchase_sheet_content.dart';
import 'package:student_app/core/common/widget/price_widget.dart';
import 'package:student_app/core/core.dart';
import 'package:student_app/core/pruches/bloc/pruches_bloc.dart';
import 'dart:async';

/// Widget لعرض قائمة عناصر مع staggered animation
class StaggeredAnimatedList<T> extends StatefulWidget {
  final List<T> items;
  final Widget Function(T item) itemBuilder;
  final Duration initialDelay;
  final Duration itemDelay;
  final bool visible;
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

  @override
  void initState() {
    super.initState();
    _showItems = List.filled(widget.items.length, false);
    if (widget.visible) _runAnimation();
  }

  @override
  void didUpdateWidget(covariant StaggeredAnimatedList<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.visible && !_showItems.any((e) => e)) {
      _showItems = List.filled(widget.items.length, false);
      _runAnimation();
    } else if (!widget.visible && _showItems.any((e) => e)) {
      setState(() {
        _showItems = List.filled(widget.items.length, false);
      });
    }
  }

  Future<void> _runAnimation() async {
    await Future.delayed(widget.initialDelay);
    for (int i = 0; i < widget.items.length; i++) {
      if (!mounted) return;
      setState(() => _showItems[i] = true);
      await Future.delayed(widget.itemDelay);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(widget.items.length, (i) {
        return AnimatedOpacity(
          opacity: _showItems[i] && widget.visible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 300),
          child:
              _showItems[i] && widget.visible
                  ? widget.itemBuilder(widget.items[i])
                  : const SizedBox.shrink(),
        );
      }),
    );
  }
}

/// Widget لعرض قائمة عناصر مع staggered grow animation (كل عنصر يكبر تدريجياً مع ظهوره)
class StaggeredGrowList<T> extends StatefulWidget {
  final List<T> items;
  final Widget Function(T item) itemBuilder;
  final Duration itemDelay;
  final bool visible;
  const StaggeredGrowList({
    super.key,
    required this.items,
    required this.itemBuilder,
    this.itemDelay = const Duration(milliseconds: 80),
    this.visible = true,
  });

  @override
  State<StaggeredGrowList<T>> createState() => _StaggeredGrowListState<T>();
}

class _StaggeredGrowListState<T> extends State<StaggeredGrowList<T>> {
  late List<bool> _showItems;

  @override
  void initState() {
    super.initState();
    _showItems = List.filled(widget.items.length, false);
    if (widget.visible) _runShowAnimation();
  }

  @override
  void didUpdateWidget(covariant StaggeredGrowList<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.visible && !_showItems.any((e) => e)) {
      _showItems = List.filled(widget.items.length, false);
      _runShowAnimation();
    } else if (!widget.visible && _showItems.any((e) => e)) {
      _runHideAnimation();
    }
  }

  Future<void> _runShowAnimation() async {
    for (int i = 0; i < widget.items.length; i++) {
      if (!mounted) return;
      setState(() => _showItems[i] = true);
      await Future.delayed(widget.itemDelay);
    }
  }

  Future<void> _runHideAnimation() async {
    for (int i = widget.items.length - 1; i >= 0; i--) {
      if (!mounted) return;
      setState(() => _showItems[i] = false);
      await Future.delayed(widget.itemDelay);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(widget.items.length, (i) {
        return AnimatedSize(
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeInOut,
          child: AnimatedOpacity(
            opacity: _showItems[i] && widget.visible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 300),
            child:
                _showItems[i] && widget.visible
                    ? widget.itemBuilder(widget.items[i])
                    : const SizedBox.shrink(),
          ),
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
  bool _contentVisible = true;

  @override
  void didUpdateWidget(covariant PartWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    final isExpanded = widget.unit?.isExpanded ?? false;
    if (isExpanded && !_wasExpanded) {
      setState(() {
        _shouldShowContent = true;
        _contentVisible = true;
      });
    } else if (!isExpanded && _wasExpanded) {
      final nVideos = widget.unit?.videos?.length ?? 0;
      final nUnits = widget.unit?.units?.length ?? 0;
      final nTotal = nVideos + nUnits;
      const int itemDelayMs = 40;
      final hideDuration = Duration(
        milliseconds: (nTotal > 0 ? nTotal : 1) * itemDelayMs + 200,
      );
      // ابدأ بإخفاء العناصر
      Future.delayed(hideDuration - const Duration(milliseconds: 200), () {
        if (mounted && !(widget.unit?.isExpanded ?? false)) {
          setState(() {
            _contentVisible = false;
          });
        }
      });
      Future.delayed(hideDuration, () {
        if (mounted && !(widget.unit?.isExpanded ?? false)) {
          setState(() {
            _shouldShowContent = false;
            _contentVisible = true; // إعادة التهيئة للفتح القادم
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
            AnimatedOpacity(
              opacity: _contentVisible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 200),
              child: Container(
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
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ), // Same color as left & right
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                child: Column(
                  children: [
                    StaggeredGrowList<VideoModel>(
                      items: unit?.videos ?? [],
                      visible: unit!.isExpanded,
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
                    StaggeredGrowList<Unit>(
                      items: unit?.units ?? [],
                      visible: unit!.isExpanded,
                      itemDelay: const Duration(milliseconds: 80),
                      itemBuilder:
                          (Unit unit) => ChapterWidget(
                            pruchesBloc: widget.pruchesBloc,
                            unit: unit,
                            myLeason: widget.myLeason,
                            onToggleChapter: () => widget.onToggleChapter(unit),
                            onToggleLesson:
                                (Unit lesson) => widget.onToggleLesson(lesson),
                          ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
