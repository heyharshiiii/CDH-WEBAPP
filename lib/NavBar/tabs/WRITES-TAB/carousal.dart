import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DestinationCarousel extends StatefulWidget {
  @override
  _DestinationCarouselState createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<DestinationCarousel> {
  final String imagePath = 'assets/images/';

  final CarouselController _controller = CarouselController();

  List _isHovering = [false, false, false, false];
  List _isSelected = [true, false, false, false];

  int _current = 0;

  final List<String> images = [
    'assets/images/contents/article.gif',
    'assets/images/contents/comunity.jfif',
    'assets/images/contents/opensource.png',
    'assets/images/contents/tech1.jfif',
  ];

  final List<String> places = [
    'ASIA',
    'AFRICA',
    'EUROPE',
    'SOUTH AMERICA',
  ];

  List<Widget> generateImageTiles(screenSize) {
    return images
        .map(
          (element) => ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              element,
              fit: BoxFit.cover,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);

    return Container(
        height: screenSize.height/4,
        padding: const EdgeInsets.all(8),
        color:const Color.fromARGB(255, 121, 42, 42),
    
        child: Stack(
        children: [
          CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
              autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 5,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
    
                  });
                }),
            carouselController: _controller,
          ),
          AspectRatio(
            aspectRatio: 5,
            child: Center(
              child: Text(
                places[_current],
                style: TextStyle(
                  letterSpacing: 8,
                  decoration: TextDecoration.none,
                  fontFamily: 'Electrolize',
                  fontSize: screenSize.width / 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
    
        ],
      )
      );

  }
}