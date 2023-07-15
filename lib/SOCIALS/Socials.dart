import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';


class Socials extends StatelessWidget {
  const Socials({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Spacer(),
         IconButton(onPressed: _launchUrllinkedin,
        icon: SvgPicture.asset("assets/icons/linkedin.svg")),

        IconButton(onPressed: _launchUrlfb,
        icon: SvgPicture.asset("assets/icons/fb.svg")),


        IconButton(onPressed: _launchUrlyt,
        icon: SvgPicture.asset("assets/icons/yt.svg")),


        IconButton(onPressed: _launchUrlInsta,
        icon: SvgPicture.asset("assets/icons/ig.svg")),
        Spacer(),
      ],
    );
  }
}


final Uri _url1 = Uri.parse('https://www.linkedin.com/company/career-development-hub/');
Future<void> _launchUrllinkedin() async {
  if (!await launchUrl(_url1)) {
    throw Exception('Could not launch $_url1');
  }
}
final Uri _url2 = Uri.parse('https://www.facebook.com/cdh.iter');
Future<void> _launchUrlfb() async {
  if (!await launchUrl(_url2)) {
    throw Exception('Could not launch $_url2');
  }
}
final Uri _url3 = Uri.parse('https://www.youtube.com/channel/UCslmh8ws0zQPhMly4Itx_AQ');
Future<void> _launchUrlyt() async {
  if (!await launchUrl(_url3)) {
    throw Exception('Could not launch $_url3');
  }
}
final Uri _url4 = Uri.parse('https://www.instagram.com/cdh.iter/');
Future<void> _launchUrlInsta() async {
  if (!await launchUrl(_url4)) {
    throw Exception('Could not launch $_url4');
  }
}

