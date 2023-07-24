import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class schedule extends StatefulWidget {
  const schedule({Key? key}) : super(key: key);

  @override
  State<schedule> createState() => _scheduleState();
}

class _scheduleState extends State<schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: schedule_body(),
    );
  }
}
class schedule_body extends StatefulWidget {
  const schedule_body({Key? key}) : super(key: key);

  @override
  State<schedule_body> createState() => _schedule_bodyState();
}

class _schedule_bodyState extends State<schedule_body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        child: Container(
          child: Column(
            children: [
              Stack(



                children: <Widget>[
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff1ed4be),Color(0xff00fff7)],
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60)
                )
            ),),

                  Container(
                    margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 100


                    ),
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          child: Container(

                            width: double.infinity,
                            decoration: BoxDecoration(
                            // border: Border.all(
                            //   color: Colors.black,
                            //   width: 2,
                            // )
                            ),
                            child: Column(
                          children: [
                            Text("SCHEDULE",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w600
                            ),),
                            SizedBox(height: 20,),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade400,
                                    blurRadius: 10,
                                    spreadRadius: 2,

                                  )
                                ]
                              ),

                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(

                                    children: [
                                      schedule_text(text: "Take 2 pills Aspirin"),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("09:45",style: GoogleFonts.poppins(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700
                                      ),),
                                      Text("Today",style: GoogleFonts.poppins(

                                        fontWeight: FontWeight.w500
                                      ),),
                                      Text("17 April 2019"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 30,),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade400,
                                      blurRadius: 10,
                                      spreadRadius: 2,

                                    )
                                  ]
                              ),

                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [
                                      schedule_text(text: "Take 2 pills Aspirin"),
                                      SizedBox(height: 3,),
                                      schedule_text(text: "Take Vitamin"),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("10:45",style: GoogleFonts.poppins(
                                          fontSize: 30,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700
                                      ),),
                                      Text("Today",style: GoogleFonts.poppins(

                                          fontWeight: FontWeight.w500
                                      ),),
                                      Text("17 April 2019"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade400,
                                      blurRadius: 10,
                                      spreadRadius: 2,

                                    )
                                  ]
                              ),

                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [
                                      schedule_text(text: "Take 2 pills Arpirin",),
                                      SizedBox(height: 3,),
                                      schedule_text(text: "Take Vitamin"),

                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("11:45",style: GoogleFonts.poppins(
                                          fontSize: 30,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700
                                      ),),
                                      Text("Today",style: GoogleFonts.poppins(

                                          fontWeight: FontWeight.w500
                                      ),),
                                      Text("17 April 2019"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade400,
                                      blurRadius: 10,
                                      spreadRadius: 2,

                                    )
                                  ]
                              ),

                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [
                                      schedule_text(text: "Take 2 pills Aspirin"),
                                      SizedBox(height: 3,),
                                      schedule_text(text: "Take 2 Panadol"),
                                      schedule_text(text: "Take 2 pills Aspirin"),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("08:45",style: GoogleFonts.poppins(
                                          fontSize: 30,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700
                                      ),),
                                      Text("Today",style: GoogleFonts.poppins(

                                          fontWeight: FontWeight.w500
                                      ),),
                                      Text("17 April 2019"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class schedule_text extends StatelessWidget {
  String text;


  schedule_text({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.circle,color: Colors.pink,
          size: 7,
        ),
        SizedBox(width: 5,),
        Text("$text",style: GoogleFonts.poppins(
            fontSize: 14
        ),),
        SizedBox(
          height: 3,
        ),

      ],
    );
  }
}

