import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/widgets/theme.dart';

class FirstPricing extends StatefulWidget {

  @override
  State<FirstPricing> createState() => _FirstPricingState();
}

class _FirstPricingState extends State<FirstPricing> {
  int selectedIndex = -1;
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

    Widget option(
      int index,
      String imageUrl,
      String title,
      String description,
      String subDescription,
    ) {
      return GestureDetector(
        onTap: (){
          setState((){
            selectedIndex = index;
          });
        },
        child: Container(
          width: 210,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(
              color: selectedIndex == index ? Color(0xff6050E7) : Color(0xffD9DEEA)),
            borderRadius: BorderRadius.circular(60),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 16, left: 17, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(imageUrl,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 7,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                        style: GoogleFonts.poppins(
                          color: Color(0xff191919),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),),
                        Row(children: [
                          Text(
                            description,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: Color(0xffA3A888)
                            ),
                            ),
                          SizedBox(width: 6),
                          Text(
                            subDescription,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff5343C2),
                            ),
                            )
                        ],
                        )
                    ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 37, left: 41.0),
                    child: selectedIndex == index 
                    ? Image.asset('assets/purple_check.png', width: 26,) 
                    : SizedBox( width: 26),
                  ),
              ]),
            ),
        ),
      );
    }
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          header(),
          SizedBox(height: 50),
          option(0, 'assets/pig_icon.png', 'Money Security', 'Support', '24/7'),
          SizedBox(height: 24,),
          option(1, 'assets/paper_illustration.png', 'Automation', 'We provide', 'Invoice'),
          SizedBox(height: 24,),
          option(2, 'assets/dollar_icon.png', 'Balance Report', 'Can up to', '10K'),
      ],),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff6050E7),
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 15, left: 30.0),
              child: Text(
                'Upgrade Now',
                style: GoogleFonts.poppins(
                  color: whiteColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),),
            ),
              label: '',
              ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 31, left: 60),
              child: Image.asset(
                'assets/right_arrow.png',
                width: 24,),
            ),
              label: '',
              ),
        ],
      ),
    );
  }
}