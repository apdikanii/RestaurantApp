import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reastrants_app/constants/constant_color.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
   return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildHeader(
        urlImage: 'assets/images/profileimg.png',
        name: 'Mohamed Farah',
        context: context,
        account: 'My Account'
       ),
       //profile bottoms
        proffilBott(text: "My Information", icon: Icons.person, onClick: (){}),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, ),
          child: Divider(thickness: 1, color: Color.fromARGB(18, 0, 0, 0),),
        ),

        proffilBott(text: "Address", icon: Icons.maps_home_work_rounded, onClick: (){}),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, ),
          child: Divider(thickness: 1, color: Color.fromARGB(18, 0, 0, 0),),
        ),

       proffilBott(text: "Payment", icon: Icons.payment_outlined, onClick: (){}),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, ),
          child: Divider(thickness: 1, color: Color.fromARGB(18, 0, 0, 0),),
        ),

       proffilBott(text: "Sign Out", icon: Icons.signpost_outlined, onClick: (){}),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, ),
          child: Divider(thickness: 1, color: Color.fromARGB(18, 0, 0, 0),),
        ),

       //last part
       Spacer(flex: 3,),
       Padding(
         padding: const EdgeInsets.only(left: 147.0, bottom: 20),
         child: Text("@2022 CAWALEICT",textAlign: TextAlign.center, style: GoogleFonts.poppins(
          fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromARGB(210, 0, 0, 0)
         ),),
       ) 
    ],
    );
  }

   Widget buildHeader({
    required String urlImage,
    required String name,
    required BuildContext context,
    required String account,
  }) =>
      InkWell(
        onTap: (){},
        child: Container(
          height: 312,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: darkBlueColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 59.0),
                  child: Text(account,textAlign: TextAlign.center, style: GoogleFonts.poppins(
                    fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white
                  ),),
                ),
                const SizedBox(height: 5,),
                CircleAvatar(radius: 70, backgroundImage: AssetImage(urlImage)),
                // Container(
                //   height: 38,
                //   width: 153,
                //   child: Image.asset(urlImage)),
                const SizedBox(height: 2),
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    fontSize: 30, fontWeight: FontWeight.w400, color: Colors.white
                  ),
                ),
                
              ],
            ),
          ),
        ),
      );

      Widget proffilBott ({
        required String text,
        required IconData icon,
        required VoidCallback onClick,
      }) => Padding(
          padding: const EdgeInsets.only(left: 24.0, top: 15),
          child: TextButton.icon(
            style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(vertical: 0),
              ),
           onPressed: onClick,
           icon: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color.fromARGB(15, 0, 0, 0)
            ),
            child: Icon(icon, color: darkBlueColor,)),
           label: Text(text, style: GoogleFonts.poppins(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black
           )
              ),
          ),
        );
}