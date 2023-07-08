import 'package:cdh2/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavComp extends StatelessWidget {
  const NavComp({super.key,required this.component,required this.icons});
  final String component;
  final Icon icons;
  @override
  Widget build(BuildContext context) {
    return  TextButton(
      onPressed: (){},
      child: Container(
        padding: EdgeInsets.all(5.0),
              child: Row(
                        children: [
                          icons,
                          Text(component,
                          style: GoogleFonts.poppins(
                            fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.white
                          ),
                          ),
                        ],
                      ),
                      ),
    );
  }
}