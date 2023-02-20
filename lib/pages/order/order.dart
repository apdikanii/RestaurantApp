import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reastrants_app/constants/constant_color.dart';
import 'package:reastrants_app/pages/order/sec_order.dart';

class Order extends StatelessWidget {
  Order({super.key});
  List<String> titles = [
    'On Delivery',
    'Process',
    'Success'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
             height: 88,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: darkBlueColor,
              ),
              child:Padding(
                padding: const EdgeInsets.only( top: 48),
                child: Text("My Orders", textAlign: TextAlign.center, style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),),
              ),
          ),
          //bannar part will start now 
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              title(text: titles[0], onClick: (){ sekectedTitle(context, 0);}),
              SizedBox(width: 10,),
              title(text: titles[1], onClick: (){sekectedTitle(context, 1);}),
              SizedBox(width: 10,),
              title(text: titles[1], onClick: (){sekectedTitle(context, 2);}),

            ],
          ),
          //Second bannar part will start now
          Padding(
            padding: const EdgeInsets.only (left: 8.0),
            child: Text('Pending Orders', textAlign: TextAlign.left, style: GoogleFonts.poppins(
              fontSize: 25, fontWeight: FontWeight.w500, color: Color(0xFF3E4A61)
            ),),
          ),  
          Lemon(clicks: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SecOrder(),));
          }, imgs: 'assets/images/orderimg2.png', juice: "Lemon Juice", 
          item: "3 Items", Process: "Process", time: "7.50\$"),

          Lemon(clicks: (){}, imgs: 'assets/images/orderimg2.png', juice: "Lemon Juice", 
          item: "3 Items", Process: "Process", time: "7.50\$"),
          //lemon Juice part will design
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text('Pending Orders', textAlign: TextAlign.left, style: GoogleFonts.poppins(
              fontSize: 25, fontWeight: FontWeight.w500, color: Color(0xFF3E4A61)
            ),),
          ),  
          Lemon(clicks: (){}, imgs: 'assets/images/orderimg2.png', juice: "Lemon Juice", 
          item: "3 Items", Process: "Process", time: "7.50\$"),
        ],
      ),
    ),
    );
  }
  Widget title ({
    required String text,
    required VoidCallback onClick
  }){
    final hover = Color(0xFFC24D2C);
    final _Color = Color(0xFFD9DAD7);
     return InkWell(
      onTap: onClick,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: _Color,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text, style: GoogleFonts.poppins(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black
            ),),
          ),
        ),
      ),
     );
  }
  
  void sekectedTitle(BuildContext context, int index) {
    switch(index){
      case 0:
        hoverColor: Colors.black;
        break;
      case 1:
        hoverColor: Colors.black;
        break;
      case 2:
        hoverColor: Colors.black;
        break;
    }
  }

}

class Lemon extends StatelessWidget {
  Lemon({super.key, required this.clicks, required this.imgs, 
  required this.juice, required this.item, required this.Process, required this.time});

  final VoidCallback clicks;
  final String imgs, juice, item, Process, time;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: clicks,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFD9DAD7)
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
          
              child: Image.asset(imgs, height: 171,),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text( juice,style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black
                ),),
                Text(item, style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black
                ),),
                Text(time , style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black
                ),),
                Text(Process, style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}