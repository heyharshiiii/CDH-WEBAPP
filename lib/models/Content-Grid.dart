import 'package:cdh2/constants.dart';
import 'package:flutter/material.dart';
import 'package:cdh2/responsive.dart';
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
Content(textt: Text("ARTICLE",style:contentTitle,textAlign: TextAlign.center,), img: Image.asset("assets/images/contents/article1.jpg",fit: BoxFit.cover,),),
Content(textt: Text("INCLUSION & DIVERSITY",style: contentTitle,textAlign: TextAlign.center,), img: Image.asset("assets/images/contents/Meeting.gif",fit: BoxFit.cover,)),
Content(textt: Text("SESSIONS",style: contentTitle,textAlign: TextAlign.center,), img: Image.asset("assets/images/contents/sessions.jfif",fit: BoxFit.cover,)),
Content(textt: Text("SCHOLARSHIP",style: contentTitle,textAlign: TextAlign.center,), img: Image.asset("assets/images/contents/scholarship.jfif",fit: BoxFit.cover,)),
Content(textt: Text("PLACEMENT & INTERNSHIP",style: contentTitle,textAlign: TextAlign.center,), img: Image.asset("assets/images/contents/internship.jfif",fit: BoxFit.cover,)),
Content(textt: Text("HACKATHONS",style: contentTitle,textAlign: TextAlign.center,), img: Image.asset("assets/images/contents/hackathon.gif",fit: BoxFit.cover,)),
Content(textt: Text("COMMUNITY",style: contentTitle,textAlign: TextAlign.center,), img: Image.asset("assets/images/contents/comunity.jfif",fit: BoxFit.cover,)),
Content(textt: Text("OPEN SOURCE",style: contentTitle,textAlign: TextAlign.center,), img: Image.asset("assets/images/contents/opensource.png",fit: BoxFit.cover,)),
Content(textt: Text("TECH BYTES",style: contentTitle,textAlign: TextAlign.center,), img: Image.asset("assets/images/contents/techhh.jpg",fit: BoxFit.cover,)),

];