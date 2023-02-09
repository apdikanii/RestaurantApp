import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reastrants_app/constants/constant_color.dart';
import 'package:reastrants_app/pages/home/bannarPHotos.dart';
import 'package:reastrants_app/pages/home/smooth_page_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
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
                      // suffixIcon: Padding(
                      //   padding: const EdgeInsets.all(
                      //       RDefaultPadding * 0.75), //15
                      //   child: WebsafeSvg.asset(
                      //     "assets/icons/Search.svg",
                      //     width: 14,
                      //   ),
                      // ),
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
         SmoothPage(),
          // Container(
          //   height: 161,
          //   decoration: BoxDecoration(

          //   ),
          //   child: PageView.builder(
          //     itemCount: bannarList.length,
          //     itemBuilder: (context, index){
          //       return Container(
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(20),
          //           image: DecorationImage(image: NetworkImage(bannarList[index].thumbnailUrl),
          //           fit: BoxFit.cover
          //         )),
          //       );
          //     }
          //     ),
          // )
        ],
      ),
    );
  }
}