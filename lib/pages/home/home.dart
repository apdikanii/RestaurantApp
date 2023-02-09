import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reastrants_app/constants/constant_color.dart';
import 'package:reastrants_app/pages/home/bannarPHotos.dart';
import 'package:reastrants_app/pages/home/smooth_page_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Material(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 112,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: darkBlueColor,
              ),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 24)),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Welcome", hintStyle: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w400, color: darkBlueColor
                        ),
                        fillColor: lightWhiteColor,
                        filled: true,
                        suffixIcon: Icon(Icons.search, weight: 14,),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    //notification 
                  ),
                ],
              ),
            ),
            //banner images
           Smoothpage1(),
           
           //promotion part 
           SizedBox(height: 30,),
           Padding(
             padding: const EdgeInsets.only(left: 28.0),
             child: Container(
              height: 24,
              width: 116,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: brownColor
              ),child: Text("Promotion",textAlign: TextAlign.center, style: GoogleFonts.poppins(
              fontSize: 16, fontWeight: FontWeight.w400, color: lightWhiteColor
             ),),
             ),
           ),
           
            
          ],
        ),
      ),
    );
  }
}