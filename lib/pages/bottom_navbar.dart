import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reastrants_app/constants/constant_color.dart';
import 'package:reastrants_app/pages/home/home.dart';
import 'package:reastrants_app/pages/order/order.dart';
import 'package:reastrants_app/pages/profile/profile.dart';

class Bottnavbar extends StatefulWidget {
  const Bottnavbar({super.key});

  @override
  State<Bottnavbar> createState() => _BottnavbarState();
}

class _BottnavbarState extends State<Bottnavbar> {
  int index = 0;
final screens = [
  Home(),
  Order(),
  Profile(),

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[index],
      
      //bottomNavBar
        bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.transparent,
          labelTextStyle: MaterialStatePropertyAll(
            GoogleFonts.poppins(
              fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white
            )
          ),
        ),
         child: NavigationBar(
          height: 100,
          backgroundColor: darkBlueColor,
          //labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          //animationDuration: Duration(seconds: 3),
          selectedIndex: index,
          onDestinationSelected: (index) => 
          {
            setState(() => this.index = index),
          },
        destinations: [
         NavigationDestination(
          icon: Icon(Icons.home, color: lightWhiteColor,),
            label: "Home"),
          NavigationDestination(
           icon: Icon(Icons.file_copy_rounded, color: lightWhiteColor,),
             label: 'Orders',),
          NavigationDestination(
           icon: Icon(Icons.person, color: lightWhiteColor,),
            label: 'Profile',),
          ],),
          ),
    );
  }
}