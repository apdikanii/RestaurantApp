import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reastrants_app/pages/home/home.dart';

class ThirdOrder extends StatelessWidget {
  const ThirdOrder({super.key});

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
            child: Image.asset('assets/images/lemon1.png', width: 370,),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: Color(0xFFD9DAD7),
              borderRadius: BorderRadius.circular(20)
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
              ],),
          ),
      
        //payment part
        CardPayment(name: "Card Number", cardNo: "2548 - 6524 - 8541 - 652", icon: Icons.fork_right),
        CardPayment(name: "Card holder’s name", cardNo: "Abdi Ali Jama", icon: Icons.fork_right),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardPaymentSmll(name: "Expiry date", cardNo: "09/25", icon: Icons.fork_right),
            CardPaymentSmll(name: "CVV", cardNo: "***", icon: Icons.fork_right),
          ],
        ),
        //last put not list
        Row(
          children: [
             Text("Total amount:", style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black
             ),),
             Text("7.50\$", style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black
             ),),
             TextButton(
             child: Text("Pay Now", style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black
             ),),
             style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black.withOpacity(0.2))),
              onPressed: (){},
             )

          ],
        )
      ],
    );
  }
  //card payment big size part
  Widget CardPayment({
    required String name, 
    required String cardNo,
    required IconData icon,
  }) => Padding(
    padding: const EdgeInsets.only(left: 29),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      
      children: [
        
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(name, style: GoogleFonts.poppins(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black
          )),
        ),
        Row(
          children: [
            Container(
              height: 41, 
              width: 334,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black.withOpacity(0.2)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0, left: 14),
                child: Text(cardNo, style: GoogleFonts.poppins(
                  fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFFC24D2C)
                )),
              ),
            ),
            SizedBox(width: 17,),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF08B883),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Icon(icon))
          ],
        )
      ],
    ),
  );
  //card payment smll size part
  Widget CardPaymentSmll({
    required String name, 
    required String cardNo,
    required IconData icon,
  }) => Padding(
    padding: const EdgeInsets.only(left: 29),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      
      children: [
        
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(name, style: GoogleFonts.poppins(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black
          )),
        ),
        Row(
          children: [
            Container(
              height: 41, 
              width: 103,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black.withOpacity(0.2)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0, left: 14),
                child: Text(cardNo, style: GoogleFonts.poppins(
                  fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFFC24D2C)
                )),
              ),
            ),
            SizedBox(width: 17,),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFF08B883),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Icon(icon))
          ],
        )
      ],
    ),
  );
}