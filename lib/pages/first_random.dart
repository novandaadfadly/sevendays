import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/widgets/theme.dart';
import 'package:sevendays/widgets/card_list.dart';

class FirstRandom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 30, right: 30),
        child: Column(
          children: [
            Center(
              child: Text('Shopping Cart',
              style: GoogleFonts.poppins(
                color: Color(0xff191919),
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),),
            ),
            SizedBox(height: 20,),
            CartList(
              imageUrl: 'assets/burger.png',
              iconOne: 'assets/min_icon.png',
              amount: '2',
              iconTwo: 'assets/plus_icon.png',
              food: 'Burger Malleta',
              place: 'Mcatheone',
              pricing: '\$90.00',
            ),
            SizedBox(height: 20,),
            CartList(
              imageUrl: 'assets/flower.png',
              iconOne: 'assets/min_icon.png',
              amount: '5',
              iconTwo: 'assets/plus_icon.png',
              food: 'Mojito Orange',
              place: 'Mcatheone',
              pricing: '\$51.00',
            ),
            SizedBox(height: 26,),
            Container(
              width: 315,
              height: 161,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 16, left: 16.0, right: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Information',
                    style: GoogleFonts.poppins(
                            color: Color(0xff191919),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Text('Sub Total',
                          style: GoogleFonts.poppins(
                            color: Color(0xff191919),
                            fontSize: 16,
                          ),),
                          SizedBox(height: 10,),
                          Text('Delivery',
                          style: GoogleFonts.poppins(
                            color: Color(0xff191919),
                            fontSize: 16,
                          ),),
                          SizedBox(height: 10,),
                          Text('Total',
                          style: GoogleFonts.poppins(
                            color: Color(0xff191919),
                            fontSize: 16,
                          ),)
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(height: 10,),
                          Text('\$435.00',
                          style: GoogleFonts.poppins(
                            color: Color(0xff191919),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),),
                          SizedBox(height: 10,),
                          Text('\$15.00',
                          style: GoogleFonts.poppins(
                            color: Color(0xff191919),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),),
                          SizedBox(height: 10,),
                          Text('\$450.00',
                          style: GoogleFonts.poppins(
                            color: Color(0xff191919),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),)
                        ],
                      ),
                    ],)
                  ],
                ),
              ),
            ),
            SizedBox(height: 60,),
            Container(
              width: 327,
              height: 60,
              child: TextButton(
                style: TextButton.styleFrom(
                  shadowColor: Color(0xffFFC532),
                  elevation: 8,
                  backgroundColor: Color(0xffFFC532),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(53),
                  )
                ),
                onPressed: (){}, 
                child: Text(
                  'Check Out Now',
                  style: GoogleFonts.poppins(
                    color: Color(0xff2E221B),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,)
                  ),
                  ),
            ),
            SizedBox(height: 16,),
            Container(
              width: 327,
              height: 60,
              child: TextButton(
                style: TextButton.styleFrom(
                  shadowColor: Color(0xffD9D9D9),
                  backgroundColor: Color(0xffD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(53),
                  )
                ),
                onPressed: (){}, 
                child: Text(
                  'Save to Wishlist',
                  style: GoogleFonts.poppins(
                    color: Color(0xffFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,)
                  ),
                  ),
            ),
          ],
          ),
      )
    );
  }
}