import 'package:flutter/material.dart';

import '../../../constants.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 400,
      decoration: BoxDecoration(
          gradient: cardcolor,
          boxShadow: [
            BoxShadow(blurRadius: 15.0, color: Colors.white54),
          ],
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ShaderMask(
            shaderCallback: (Rect rect) {
              return graddd.createShader(rect);
            },
            child: Text(
              "C  D  H",
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          SizedBox(height: defaultPadding),
          Text("A Community Of ITER",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0))
        ],
      ),
    );
  }
}
