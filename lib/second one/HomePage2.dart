import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          color:  Color(0xff96c3af),
          child: Stack(
            children: [
            Container(
             height: 550,
             width: size.width,
             child: Image.network(
              'https://i.postimg.cc/zfsRBxK2/istockphoto-1074664246-612x612.jpg',
              fit: BoxFit.cover,
            ),
            ),
           Positioned(
            left: 30,
            right: 30,
            top: 180,

            child: Material(
              borderRadius:BorderRadius.circular(10) ,
              child: Container(
               height: 550,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding : EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("welcom",
                        style: GoogleFonts.abrilFatface(
                      fontSize: 40,
                      color: Color(0xff96c3af),
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold),
                ),

                      TextFormField(
                          style: GoogleFonts.abrilFatface(
                            color: Colors.grey[700],
                            fontSize: 14,
                            letterSpacing: 2,
                          ),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Color(0xff96c3af))),
                            labelText: "Email",
                            labelStyle: GoogleFonts.abrilFatface(
                                color: Color(0xff96c3af), fontSize: 20),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 10),
                            prefixIcon: Icon(Icons.email_outlined,
                                color: Color(0xff96c3af)),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          style: GoogleFonts.abrilFatface(
                            color: Colors.grey[700],
                            fontSize: 14,
                            letterSpacing: 2,
                          ),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Color(0xff96c3af))),
                            labelText: "Password",
                            labelStyle: GoogleFonts.abrilFatface(
                                color: Color(0xff96c3af), fontSize: 20),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 10),
                            prefixIcon: Icon(Icons.lock_outline,
                                color: Color(0xff96c3af)),
                          )),
                      SizedBox(height: 20,),
                      TextButton(onPressed: null, child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff96c3af)
                          ),
                          child: Center(
                            child: Text("Login",style: GoogleFonts.abrilFatface(
                                color: Colors.white,
                                letterSpacing: 2,
                                fontSize: 20,
                                fontWeight: FontWeight.w400
                            ),),
                          ),
                        ),
                      )),
                      SizedBox(height: 50,),
                      Center(child: Text("Don't have an account?",
                        style: GoogleFonts.abrilFatface(
                            color: Colors.grey[700],
                            fontSize: 14,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w500
                        ),
                      )),
                      SizedBox(height: 10,),
                      Center(child: Text("SignUp",
                        style: GoogleFonts.abrilFatface(
                            color: Color(0xff96c3af),
                            fontSize: 14,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold
                        ),
                      )
                      ),
                    ],
                  )
                )
              ),
            ),
           )
            ],
          ),
        ),
      ),
    );
  }

}