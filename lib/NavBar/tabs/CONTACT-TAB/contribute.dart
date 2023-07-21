import 'package:cdh2/NavBar/tabs/CONTACT-TAB/action-button.dart';
import 'package:cdh2/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Contribute extends StatefulWidget {
  const Contribute({super.key, required this.onContactSelected});
  final Function onContactSelected;
  @override
  State<Contribute> createState() => _ContributeState();
}

class _ContributeState extends State<Contribute> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(size.height > 770
          ? 64
          : size.height > 670
              ? 32
              : 16),
      child: Center(
        child: Card(
            elevation: 10,
            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            child: AnimatedContainer(
              decoration: BoxDecoration(
                color: Colors.white38,
                borderRadius: BorderRadius.circular(18),
              ),
              duration: Duration(milliseconds: 2000),
              height: size.height *
                  (size.height > 770
                      ? 0.7
                      : size.height > 670
                          ? 0.8
                          : 0.9),
              width: 500,
              //color: Colors.white,
              child: Center(
                child: SingleChildScrollView(
                  child: Padding(
                      padding: EdgeInsets.all(25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "C O N T R I B U T E",
                            style: GoogleFonts.montserrat(
                                color: darkColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: 30,
                            child: Divider(
                              color: kPrimaryColor,
                              thickness: 2,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                hintText: 'Full Name',
                                labelText: 'Full Name',
                                suffixIcon: Icon(Icons.person)),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                hintText: 'Email',
                                labelText: 'Email',
                                suffixIcon: Icon(Icons.email)),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                hintText: 'Year/Alumni',
                                labelText: 'Year/Alumni',
                                suffixIcon: Icon(Icons.phone)),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                hintText: 'Type Of Contribution',
                                labelText: 'Type Of Contribution',
                                suffixIcon: Icon(Icons.code)),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          actionButton("SEND!"),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Wanna Contact us?",
                                  style: TextStyle(
                                      color:
                                          const Color.fromARGB(255, 89, 88, 88),
                                      fontSize: 14),
                                ),
                                InkWell(
                                  onTap: () {
                                    widget.onContactSelected();
                                  },
                                  child: Row(
                                    children: [
                                      Text(
                                        "CONTACT US ",
                                        style: fontTabBar2.copyWith(
                                            color: kPrimaryColor),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Icon(Icons.arrow_forward_sharp),
                                    ],
                                  ),
                                ),
                              ])
                        ],
                      )),
                ),
              ),
            )),
      ),
    );
  }
}
