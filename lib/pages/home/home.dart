import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reastrants_app/constants/constant_color.dart';
import 'package:reastrants_app/pages/home/bannarPHotos.dart';
import 'package:reastrants_app/pages/home/promotion.dart';
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
                  Padding(padding: EdgeInsets.only(top: 45,left: 24)),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0, right: 30),
                    child: Icon(Icons.notifications_active, size: 23, color: Colors.white,),
                  )
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                prom(Imgurl: "assets/images/promotion1.png", price: '25% OFF', title: 'Price 6 up',), 
                prom(Imgurl: "assets/images/promotion2.png", price: '25% OFF', title: 'Price 8 up',), 
                prom(Imgurl: "assets/images/promotion1.png", price: '25% OFF', title: 'Price 6 up',),
              ],
            ),
          ), 
        //categories part will start
          SizedBox(height: 10,),
           Padding(
             padding: const EdgeInsets.only(left: 28.0),
             child: Container(
              height: 24,
              width: 116,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: brownColor
              ),child: Text("Categories",textAlign: TextAlign.center, style: GoogleFonts.poppins(
              fontSize: 16, fontWeight: FontWeight.w400, color: lightWhiteColor
             ),),
             ),
           ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 30,), 
                categ(Imgurl: "assets/images/categories1.png", name: 'Ice'),
                categ(Imgurl: "assets/images/categories2.png", name: 'Hot'),
                categ(Imgurl: "assets/images/categories3.png", name: 'Tea'),
                Container(
                  width: 83,
                  margin: EdgeInsets.only(left: 18),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  // color: Color(0xFFC24D2C),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: categ(Imgurl: "assets/images/categories4.png", name: 'lemon'),)
              ],
            ),
          ), 
         //Promotion(),
            
          ],
        ),
      ),
    );
  }

  
  Widget prom ({
    required String Imgurl,
    required String price,
    required String title
  }) => InkWell(
    onTap: (){},
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Stack(
            children: [
              Image(image: AssetImage(Imgurl)),
              Positioned(
                left: 11,
                bottom: 22,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text(price, style: GoogleFonts.poppins(
                    fontSize: 13, fontWeight: FontWeight.w600, color: Color(0xFFC24D2C)
                  ),),
                )),
             
            ],
          ),
        ),
         Padding(
           padding: const EdgeInsets.only(left: 63, top: 8),
           child: Text(title, style: GoogleFonts.poppins(
                fontSize: 13, fontWeight: FontWeight.w500, color: Colors.black
            ),),
         ),
      ],
    ),
  );

  Widget categ ({
    required String Imgurl,
    required String name,
  }) => InkWell(
    onTap: (){},
    child: Container(
      width: 83,
      margin: EdgeInsets.only(left: 18),
      decoration: BoxDecoration(
        color: Colors.transparent,
       // color: Color(0xFFC24D2C),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image(image: AssetImage(Imgurl), width: 75,)),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 0),
            child: Text(name, textAlign: TextAlign.center, style: GoogleFonts.poppins(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.75)
            ),),
          ),
       
        ],
      ),
    ),
  );

}