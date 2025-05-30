import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/common/common.dart';
import 'package:student_app/core/managers/assets/assets.gen.dart';

class NewsWidget extends StatefulWidget {
  const NewsWidget({super.key});

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  final List<int> sliderList = <int>[1, 2, 3, 4, 5];
  final CarouselSliderController carouselSliderController =
      CarouselSliderController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 180,
          child: CarouselSlider(
            carouselController: carouselSliderController,
            options: CarouselOptions(
              height: 400.0,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() => _currentIndex = index);
              },
            ),
            items:
                sliderList.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
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
              sliderList.map((entry) {
                return GestureDetector(
                  onTap: () => carouselSliderController.jumpToPage(entry),
                  child: Container(
                    width: 20,
                    height: 6,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
                      color:
                          _currentIndex == entry
                              ? context.colorScheme.primary
                              : context.colorScheme.primary.withValues(
                                alpha: 0.5,
                              ),
                    ),
                  ),
                );
              }).toList(),
        ),
      ],
    );
  }
}
