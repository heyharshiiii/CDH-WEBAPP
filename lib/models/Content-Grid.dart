import 'package:cdh2/constants.dart';
import 'package:flutter/material.dart';
class Content{
 final Text textt;
 final Image img;
 Content(
  {
    required this.textt,
    required this.img
  }
 );
}
List<Content> demo_content=[

 Content(textt: Text("ARTICLE",style: contentTitle,), img: Image.asset("assets/images/contents/article.gif",fit: BoxFit.cover,)),
Content(textt: Text("INCLUSION & DIVERSITY",style: contentTitle,), img: Image.asset("assets/images/contents/Meeting.gif",fit: BoxFit.cover,)),
Content(textt: Text("SESSIONS",style: contentTitle,), img: Image.asset("assets/images/contents/sessions.jfif",fit: BoxFit.cover,)),
Content(textt: Text("SCHOLARSHIP",style: contentTitle,), img: Image.asset("assets/images/contents/scholarship.jfif",fit: BoxFit.cover,)),
Content(textt: Text("PLACEMENT & INTERNSHIP",style: contentTitle,), img: Image.asset("assets/images/contents/internship.jfif",fit: BoxFit.cover,)),
Content(textt: Text("HACKATHONS",style: contentTitle,), img: Image.asset("assets/images/contents/hackathon.gif",fit: BoxFit.cover,)),
Content(textt: Text("COMMUNITY",style: contentTitle,), img: Image.asset("assets/images/contents/comunity.jfif",fit: BoxFit.cover,)),
Content(textt: Text("OPEN SOURCE",style: contentTitle,), img: Image.asset("assets/images/contents/opensource.png",fit: BoxFit.cover,)),
Content(textt: Text("TECH BYTES",style: contentTitle,), img: Image.asset("assets/images/contents/techbytes.jfif",fit: BoxFit.cover,)),

];