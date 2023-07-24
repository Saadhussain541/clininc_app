import 'package:clinic_app/main.dart';
import 'package:clinic_app/start_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
class clinic_pageView extends StatefulWidget {
  const clinic_pageView({Key? key}) : super(key: key);

  @override
  State<clinic_pageView> createState() => _clinic_pageViewState();
}

class _clinic_pageViewState extends State<clinic_pageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageView_body(),
    );
  }

}
class pageView_body extends StatefulWidget {
  const pageView_body({Key? key}) : super(key: key);

  @override
  State<pageView_body> createState() => _pageView_bodyState();
}

class _pageView_bodyState extends State<pageView_body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        children: [
      Container(
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
      color: Color(0xffffffff),
      child: Column(
        children: [
          Container(

              width: double.infinity,
              height: 500,

              child: Image(image: AssetImage('assets/images/vector1.png'))),

          Text("Experience Doctor",style: GoogleFonts.pacifico(
              fontSize: 40

          ),),
          SizedBox(
            height: 15,
          ),
          Text("Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs",style: GoogleFonts.poppins(
              fontSize: 20,
              color: Colors.grey
          ),
            textAlign: TextAlign.center,
          )

        ],
      ),
    ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
            color: Color(0xffffffff),
            child: Column(
              children: [
                Container(

                    width: double.infinity,
                    height: 500,

                    child: Image(image: AssetImage('assets/images/vector2.png'))),

                Text("Open 24 Hour",style: GoogleFonts.pacifico(
                    fontSize: 40

                ),),
                SizedBox(
                  height: 15,
                ),
                Text("Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs",style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.grey
                ),
                  textAlign: TextAlign.center,
                )

              ],
            ),
          ),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                color: Color(0xffffffff),
                child: Column(
                  children: [
                    Container(

                        width: double.infinity,
                        height: 500,

                        child: Image(image: AssetImage('assets/images/vector3.png'))),

                    Text("Perfect Medicine",style: GoogleFonts.pacifico(
                        fontSize: 40

                    ),),
                    SizedBox(
                      height: 15,
                    ),
                    Text("Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs",style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.grey
                    ),
                      textAlign: TextAlign.center,
                    )

                  ],
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.leftToRight, child: start_page()));
                  },
                  child: Text("Skip",style: GoogleFonts.poppins(
                    color: Colors.pink,
                    fontSize: 20,

                  ),),
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}

