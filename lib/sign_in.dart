import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:reastrants_app/constants/constant_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reastrants_app/pages/bottom_navbar.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     extendBodyBehindAppBar: true,
     resizeToAvoidBottomInset : false,
     backgroundColor: backgroundColor,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
                Container(
                  margin: EdgeInsets.only(left: 153,right: 141, top: 151),
                  height: 131,
                  width: 131,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    color: darkWhiteColor,
                  ),
                  child: Image.asset('assets/images/signinlogo.png' ),
                ),
             // some texts and input field
              Text('Sign In', textAlign: TextAlign.center, style: GoogleFonts.rubik(
                fontSize: 35, fontWeight: FontWeight.w600, color: Colors.black
              ),),
              SizedBox(height: 16,),
              Text("Access to your account", style: GoogleFonts.poppins(
                fontSize: 20, fontWeight: FontWeight.w400, color: Color(0xFFC24D2C)
              ),),
              SizedBox(height: 38,),
              //login and password
               const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                       fillColor: backgroundColor,
                       filled: true,
                        hintText: 'Email or Phone', hintStyle: TextStyle(
                          color: darkWhiteColor ,fontSize: 17, fontWeight: FontWeight.w400),
                        prefixIcon: Icon(Icons.person, color: darkWhiteColor),
                       
                        // focusedBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(color: BackgroundColor)
                        // ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white, 
                          ),
                        )
                      ),
                  ),
                ),
                const SizedBox(height: 20,),
                //textfield Password
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: backgroundColor,
                      filled: false,
                      hintText: "Password", hintStyle: TextStyle(
                        color: darkWhiteColor, fontSize: 17, fontWeight: FontWeight.w400),
                      prefixIcon: Icon(Icons.lock_clock_rounded, color: darkWhiteColor,),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: darkWhiteColor)
                      )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                //now will make Remmber and sign in bottom
                    Text("Remember Me",textAlign: TextAlign.center, style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w400, color: Color(0xFF1A2639)
                    ),),
                SizedBox(height: 20,),
                Container(
                  height: 60,
                  width: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFFD9DAD7),
                  ),
                  child: MaterialButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>Bottnavbar()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("Sign In", textAlign: TextAlign.center, style: GoogleFonts.poppins(
                      fontSize: 25, fontWeight: FontWeight.w600, color: Color(0xFF1A2639)
                    ),),
                  ),),
                ),
                SizedBox(height: 15,),
                Text("Forgot Password?", style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w400, color: Color(0xFFC24D2C)
                ),),
                SizedBox(height: 15,),
              //sign in with
              Container(
                  child: Column(
                    children: [
                          Row(children: [
                            Expanded(
                              child:  Container(
                                  margin: const EdgeInsets.only(left: 40.0, right: 20.0),
                                  child: const Divider(
                                    color: Colors.black,
                                    height: 36,
                                  )),
                            ),
                            const Text("or sign in with", style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black
                            ),),
                            Expanded(
                              child: Container(
                                  margin: const EdgeInsets.only(left: 20.0, right: 40.0),
                                  child: const Divider(
                                    color: Colors.black,
                                    height: 36,
                                  )),
                            ),
                        ]),
                    ],
                  ),
                 ),
                 SizedBox(height: 15,),
                 // we will create social media logo 
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 0,),
                    Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black
                      ),
                      child: Image.asset("assets/images/facebook.png", width: 54,)),
                      SizedBox(width: 22,),
                     Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black
                      ),
                      child: Image.asset("assets/images/google.png", width: 54,)),
                      SizedBox(width: 22,),
                     Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black
                      ),
                      child: Image.asset("assets/images/twitter.png", width: 54,)),
                    
                  ],
                 ),
                 SizedBox(height: 15,),
                  Text.rich(
                    TextSpan(
                      text: 'Don’t have a account? ',
                      style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w400, color: Color(0xFF000000)
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Sign Up',
                            style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w400, color: Color(0xFFC24D2C)
                            )),
                        // can add more TextSpans here...
                      ],
                    ),
                  )
                // Text("Don’t have a account? Sign Up")
            ],
          ),
        ),
      )
    );
  }
}