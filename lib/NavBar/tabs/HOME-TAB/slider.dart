import 'package:carousel_slider/carousel_slider.dart';
import 'package:cdh2/constants.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  List imageList = [
    // {"id": 1, "image_path": 'assets/slider/s1.jfif'},
    {"id": 1, "image_path": 'assets/slider/s2.png'},
    // {"id": 3, "image_path": 'assets/slider/s3.png'},
    {"id": 2, "image_path": 'assets/slider/s4.jfif'},
    // {"id": 3, "image_path": 'assets/slider/s5.jfif'},
    {"id": 3, "image_path": 'assets/slider/ss1.jfif'},
    {"id": 4, "image_path": 'assets/slider/ss2.jfif'},
    {"id": 5, "image_path": 'assets/slider/ss3.jfif'},
    {"id": 6, "image_path": 'assets/slider/ss4.png'},

  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        children: [
          InkWell(
            onTap: () {
              print(currentIndex);
            },
            child: CarouselSlider(
              items: imageList
                  .map(
                    (item) => Image.asset(
                      item['image_path'],
                      fit: BoxFit.cover,
                    ),
                  )
                  .toList(),
              carouselController: carouselController,
              options: CarouselOptions(
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlay: true,
                aspectRatio: 5,
                viewportFraction: 2,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => carouselController.animateToPage(entry.key),
                  child: Container(
                    width: currentIndex == entry.key ? 17 : 7,
                    height: 7.0,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 3.0,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentIndex == entry.key
                            ? kPrimaryColor
                            : Colors.white),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    ]);
  }
}
