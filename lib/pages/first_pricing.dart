import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/widgets/theme.dart';

class FirstPricing extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 30, right: 30.0),
        child: Column
        (children: [
          Center(
            child: Image.asset('assets/crown.png',
            width: 100,),
          ),
          SizedBox(height: 48),
          Text("Which one you wish \n to Upgrade?",
          style: GoogleFonts.poppins(
            fontSize: 22,
            color: Color(0xff191919),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,)
        ],
        ),
      )
    );
  }
}