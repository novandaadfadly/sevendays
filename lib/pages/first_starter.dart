import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstStarter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/background_started.png')
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 600, left: 90, right: 90),
            child: Text('Maximize Revenue',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 650, right: 40, left: 40),
            child: Text('Gain more Profit from Crytocurrency \n without any risk involved',
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 148, right: 148, top: 755),
            child: Image.asset(
              'assets/purple_button.png',
              width: 80,
              ),
          )
        ],
      )
    );
  }
}