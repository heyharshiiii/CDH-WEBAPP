import 'package:flutter/material.dart';
import 'package:hoverover/hoverover.dart';
import './home/Socials.dart';

class HoverOverExample extends StatelessWidget {
  const HoverOverExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HoverOver(
          builder: (isHovered) {
            /// change color on hover
            final color = isHovered ? Colors.orange : Colors.redAccent;
            return PhysicalModel(
              color: Colors.white,
              elevation: isHovered ? 16 : 0,
              child: Container(
                  height: 50,
                  width: 200,
                  color: color,
                  child: const Center(
                    child: Text("Hoverover me"),
                  )),
            );
          },
          /// animation duration
          animationDurationInMilliseconds: 600,
          /// translation of x axis
          translateXAxis: 7,
          /// translation of y axis
          translateYAxis: 15,
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}