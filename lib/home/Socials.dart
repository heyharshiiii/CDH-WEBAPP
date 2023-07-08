import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Socials extends StatelessWidget {
  const Socials({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Spacer(),
         IconButton(onPressed: (){},
        icon: SvgPicture.asset("assets/icons/linkedin.svg")),
        IconButton(onPressed: (){},
        icon: SvgPicture.asset("assets/icons/fb.svg")),
        IconButton(onPressed: (){},
        icon: SvgPicture.asset("assets/icons/yt.svg")),
        IconButton(onPressed: (){},
        icon: SvgPicture.asset("assets/icons/ig.svg")),
        Spacer(),
      ],
    );
  }
}