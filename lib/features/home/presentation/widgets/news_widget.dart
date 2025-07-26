import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:student_app/core/common/common.dart';
import 'package:student_app/core/managers/assets/assets.gen.dart';

class NewsWidget extends StatefulWidget {
  const NewsWidget({super.key});

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  final List<int> sliderList = <int>[0, 1, 2, 3, 4];
  final CarouselSliderController carouselSliderController =
      CarouselSliderController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 190,
          child: CarouselSlider(
            carouselController: carouselSliderController,
            options: CarouselOptions(
              viewportFraction: .8,
              // enlargeFactor: .6,
              enlargeCenterPage: true,
              height: 400.0,
              autoPlay: true,
              onPageChanged: (int index, CarouselPageChangedReason reason) {
                setState(() => _currentIndex = index);
              },
            ),
            items:
                sliderList.map((int i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        // width: 80.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetsManager.images.temp.temp2.provider(),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              sliderList.map((int entry) {
                final bool isSelected = _currentIndex == entry;
                return GestureDetector(
                  onTap: () {
                    carouselSliderController.jumpToPage(entry);
                    setState(() {
                      _currentIndex = entry;
                    });
                  },
                  child: Container(
                    width: isSelected ? 50 : 20,
                    height: 6,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
                      color:
                          isSelected
                              ? context.colorScheme.primary
                              : context.colorScheme.primary.withAlpha(128),
                    ),
                  ),
                );
              }).toList(),
        ),
      ],
    );
  }
}
