import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: DrawClip2(),
                  child: Container(
                    width: size.width,
                    height: size.height * 0.8,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffa58fd2),
                          Color(0xffddc3fc)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.bottomRight
                      )
                    ),
                  ),
                ),

                // an other container for the second part of the gradient
                ClipPath(
                  clipper: DrawClip(),
                  child: Container(
                    width: size.width,
                    height: size.height * 0.8,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xffddc3fc),
                              Color(0xff91c5fc)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight)
                    ),
                  ),
                ),

             Padding(
               padding: const EdgeInsets.only(top: 100),
               child: Column(
                 children: [
                   Text(
                     "Login",
                     style: GoogleFonts.ubuntu(
                         color: Colors.white,
                         fontSize: 35,
                         fontWeight: FontWeight.bold),
                   ),
                   SizedBox(
                     height: 40,
                   ),
                   //input textfields
                   input("Username", false),
                   input("Password", true),
                   SizedBox(
                     height: 20,
                   ),
                   // ignore: deprecated_member_use

                   TextButton(
                       onPressed: null,
                       child: Padding(
                         padding: EdgeInsets.symmetric(
                             vertical: 10, horizontal: 40),
                         child: Container(
                           decoration: BoxDecoration(
                               color: Color(0xff6a74ce),
                               borderRadius: BorderRadius.circular(30)
                           ),
                           height: 50,
                           child: Center(
                             child: Text(
                               "Login",
                               style: GoogleFonts.ubuntu(
                                   color: Colors.white,
                                   fontWeight: FontWeight.bold),
                             ),
                           ),
                         ),
                       )),
                   Text(
                     "Forget your password?",
                     style: GoogleFonts.ubuntu(
                         color: Colors.white, fontWeight: FontWeight.bold),
                   )
                 ],
               ),
             )
              ],
            ),
            Text(
              "Or connect with",
              style: GoogleFonts.ubuntu(
                  color: Colors.blueGrey, fontWeight: FontWeight.bold),
            ),
            Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    // auth with facebook
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff38a4ef),
                              offset: Offset(3.0, 3.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0),
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(-3.0, -3.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0),
                        ],
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff38a4ef),
                      ),
                      height: 40,
                      width: 160,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/icons/facebook.png",
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Facebook",
                              style: GoogleFonts.ubuntu(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),

                    //auth with twitter
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff38a4ef),
                              offset: Offset(3.0, 3.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0),
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(-3.0, -3.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0),
                        ],
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff0058ff),
                      ),
                      height: 40,
                      width: 160,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/icons/twitter.png",
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "twitter",
                              style: GoogleFonts.ubuntu(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have account?",
                  style: GoogleFonts.ubuntu(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Sign Up",
                    style: GoogleFonts.ubuntu(
                      color: Color(0xff5172b4),
                      fontWeight: FontWeight.bold,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}


// custom widjets

Widget input(String hint, bool pass) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: GoogleFonts.ubuntu(color: Colors.grey),
            contentPadding: EdgeInsets.only(top: 15, bottom: 15),
            prefixIcon: pass
                ? Icon(
              Icons.lock_outline,
              color: Colors.grey,
            )
                : Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
            suffixIcon: pass
                ? null
                : Icon(Icons.assignment_turned_in_rounded,
                color: Colors.greenAccent),
            border: UnderlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}


class DrawClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.80);
    path.cubicTo(size.width / 4, size.height, 3 * size.width / 4,
        size.height / 2, size.width, size.height * 0.8);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class DrawClip2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.80);
    path.cubicTo(size.width / 4, size.height, 3 * size.width / 4,
        size.height / 2, size.width, size.height * 0.9);
    path.lineTo(size.width, 0);
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}