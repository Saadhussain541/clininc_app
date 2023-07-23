import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:untitled3/schedule.dart';

class start_page extends StatefulWidget {
  const start_page({super.key});

  @override
  State<start_page> createState() => _start_pageState();
}

class _start_pageState extends State<start_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myBody(),
    );
  }
}
class myBody extends StatefulWidget {
  const myBody({super.key});

  @override
  State<myBody> createState() => _myBodyState();
}

class _myBodyState extends State<myBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff1ed4be),Color(0xff00fff7)],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter
          )
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade100,
                    ),
                    width: 200,
                    height: 200,

                  ),
                ),
                Positioned(
                  left: 10,
                  top: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade200,
                    ),
                    width: 180,
                    height: 180,

                  ),
                ),

                Positioned(
                  left: 25,
                  top: 25,

                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade300,
                    ),
                    width: 150,
                    height: 150,

                  ),
                ),
                Positioned(
                  left: 50,
                  top: 50,

                  child: Container(

                    child: Icon(FontAwesomeIcons.heartPulse,
                      color: Colors.red,
                      size: 100,
                    ),

                  ),
                ),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5,horizontal: 30),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text("Lorem ipsum dolor sit amel, consectetuer adipiscing elit",style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 30
                ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 240,
                  height: 50,
                  child: ElevatedButton(onPressed: (){},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    child: Text("GET STARTED",style: GoogleFonts.poppins(
                        color: Colors.pink,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2,
                        fontSize: 25
                    ),),

                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text("Don't have an account?",style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18
                ),),
                SizedBox(
                  height: 15,
                ),
                Text("Sign in here",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 25
                  ),
                )

              ],
            ),
          )

        ],
      ),
    );
  }
}