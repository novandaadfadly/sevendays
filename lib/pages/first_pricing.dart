import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/widgets/theme.dart';

class FirstPricing extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget header () {
      return Padding(
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
      );
    }

    Widget option() {
      return Container(
        width: 210,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffD9DEEA)),
          borderRadius: BorderRadius.circular(60),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 16, left: 17, bottom: 23),
            child: Row(
              children: [
                Image.asset('assets/pig_icon.png',
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 7,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Money Security',
                      style: GoogleFonts.poppins(
                        color: Color(0xff191919),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),),
                      Row(children: [
                        Text(
                          'Support',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            color: Color(0xffA3A888)
                          ),
                          ),
                        SizedBox(width: 6),
                        Text(
                          '24/7',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: Color(0xff5343C2),
                          ),
                          )
                      ],)
                  ],),
                )
            ]),
          ),
      );
    }
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          header(),
          SizedBox(height: 50),
          option(),
      ],)
    );
  }
}