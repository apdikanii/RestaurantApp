import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reastrants_app/pages/home/home.dart';
import 'package:reastrants_app/pages/order/third_order.dart';

class SecOrder extends StatelessWidget {
  const SecOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text('Pending Orders', textAlign: TextAlign.left, style: GoogleFonts.poppins(
              fontSize: 25, fontWeight: FontWeight.w500, color: Color(0xFF3E4A61)
            ),),
          ), 
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Image.asset('assets/images/lemon1.png', width: 375,),
          ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          height: 135,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(0xFFD9DAD7),
            borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Text("Lemon Juice", style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 20),
                  child: Text("3 Items", style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black
                  ),),
                )
              ],),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Process", style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w400, color: Color(0xFFC24D2C)
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Text("7.50\$", style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black
                  ),),
                )
           ],),
              //buttom part
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: RawMaterialButton(
                child: Text("Add your credit card", style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white
                ),),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdOrder(),));
                },
                fillColor: Color(0xFF3E4A61),
                            // hoverColor: SecondaryBrand,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                ),
                            ),


            ],
          ),
        ),
        //payment part
        Container(
              width: MediaQuery.of(context).size.width,
              height: 181,
              margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF226AF4),
                      Color(0xFF053084),
                    ],
                  ),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 18,
                    top: 14,
                    child: Text("VISA", style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w600, color: Color(0xFFC24D2C)
                  )),
                  ),
                    Positioned(
                      top: 74,
                      left: 28,
                      child: Text("xxxx-xxxx-xxxx-4528",  style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white
                  ),)),
                    Positioned(
                      left: 26,
                      bottom: 31,
                      child: Text("Card Holder",  style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white
                  ),)),
                     Positioned(
                      bottom: 31,
                      right: 37,
                      child: Text("Expire",  style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white
                  ),)),
                   Positioned(
                        left: 26,
                        bottom: 8,
                        child: Text("Mohamed Farah",  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white
                    ),)),
                      Positioned(
                        bottom: 8,
                        right: 37,
                        child: Text("06/25",  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white
                    ),)),
                ],
              ),
            ),
      ],
    );
  }
}