import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class HomeGifAndIntro extends StatelessWidget {
  const HomeGifAndIntro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
        builder: (context,constraints){
          if(Responsive.isMobile(context))
          {
            return homeandintroMobile();
          }
          else {
            return homeandintroDesktop();
          }
        }
  );
  }
}

class homeandintroDesktop extends StatelessWidget {
  const homeandintroDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/images/team1.jfif",height: 500,width: 400,),
          SizedBox(width: defaultPadding/2,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("\"We can only see a short distance ahead,but we can see plenty there \nthat needs to be done.\"",
              textAlign:TextAlign.center ,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: bodyTextColor,
                fontSize: 18.0,
                letterSpacing: 1.5
              ),
              ),
              SizedBox(height: defaultPadding/2,),
              Text("~Alan Turing",
              
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: bodyTextColor,
                fontStyle: FontStyle.italic,
              ),
              ),
               SizedBox(height: defaultPadding/2,),
               Icon(Icons.remove),
              Container(
                
                child: Text("CDH is an official Club declared in the Year 2020 amidst of Covid-19 pandemic.\nThe club is organised by the ITER's placement department and the SOA's Aluminis.\nWe come up with the ideas and opportunies for those students who are good at\ncoding and for those who aren't. This club is basically meant for all those ITERians\n who are willing to grasp knowledge in the field of coding ,\naptitude/reasoning and all the placement stuffs.",
                textAlign: TextAlign.left,
                style: GoogleFonts.montserrat(
                  color: bodyTextColor,
                  letterSpacing: 0.7,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w400
                ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}


class homeandintroMobile extends StatelessWidget {
  const homeandintroMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/images/team1.jfif",height: 200,width: 200,),
          SizedBox(width: defaultPadding/2,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("\"We can only see a short distance\n ahead, but we can see plenty there \nthat needs to be done.\"",
              textAlign:TextAlign.center ,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: bodyTextColor,
                fontSize: 17.0,
                letterSpacing: 1.5
              ),
              ),
              SizedBox(height: defaultPadding/2,),
              Text("~Alan Turing",
              
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: bodyTextColor,
                fontStyle: FontStyle.italic,
              ),
              ),
               SizedBox(height: defaultPadding/2,),
               Icon(Icons.remove),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  
                  child: Text("CDH is an official Club declared in the Year 2020 amidst of Covid-19 pandemic.\nThe club is organised by the ITER's placement department and the SOA's Aluminis.\nWe come up with the ideas and opportunies for those students who are good at\ncoding and for those who aren't. This club is basically meant for all those ITERians\n who are willing to grasp knowledge in the field of coding ,\naptitude/reasoning and all the placement stuffs.",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.montserrat(
                    color: bodyTextColor,
                    letterSpacing: 0.7,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400
                  ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );;
  }
}
