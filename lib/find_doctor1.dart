import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class find_doctor1 extends StatefulWidget {
  const find_doctor1({Key? key}) : super(key: key);

  @override
  State<find_doctor1> createState() => _find_doctor1State();
}

class _find_doctor1State extends State<find_doctor1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: find_doctor_body(),
    );
  }
}
class find_doctor_body extends StatefulWidget {
  const find_doctor_body({Key? key}) : super(key: key);

  @override
  State<find_doctor_body> createState() => _find_doctor_bodyState();
}

class _find_doctor_bodyState extends State<find_doctor_body> {
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
                        right: 20,
                        left: 20,
                        top: 80
                    ),
                    child: Column(
                      children: [
                        Text("FIND DOCTOR",style: GoogleFonts.poppins(
                            fontSize: 25,
                            fontWeight: FontWeight.w700
                        ),),
                        SizedBox(
                          height: 20,
                        ),
                        Form(child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),

                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),

                              ),
                              fillColor: Colors.grey.shade300,
                              filled: true,
                              prefixIcon: Icon(Icons.search,color: Colors.blue,),
                              label: Text("Search..",style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500
                              ),),
                              floatingLabelBehavior: FloatingLabelBehavior.never
                          ),
                        ))
                      ],
                    ),
                  ),




                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            spreadRadius: 2,
                            blurRadius: 10,

                          ),
                        ],

                      ),
                      child: ExpansionTile(
                        title: Text("Specialist Doctor",style: GoogleFonts.poppins(),),
                        backgroundColor: Colors.white,
                        iconColor: Colors.pink,
                        textColor: Colors.pink,
                        collapsedBackgroundColor: Colors.white,
                        expandedAlignment: Alignment.topLeft,
                        childrenPadding: EdgeInsets.only(
                          top: 0,
                          bottom: 10,
                          right: 10,
                          left: 15
                        ),

                        children: [
                          Container(

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Doctor1",style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: Colors.black
                                ),),
                                Text("Doctor2",style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.black
                                ),),
                                Text("Doctor3",style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.black
                                ),),
                                Text("Doctor4",style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.black
                                ),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            spreadRadius: 2,
                            blurRadius: 10,

                          ),
                        ],

                      ),
                      child: ExpansionTile(
                        title: Text("Current Location",style: GoogleFonts.poppins(),),
                        backgroundColor: Colors.white,
                        iconColor: Colors.pink,
                        textColor: Colors.pink,
                        collapsedBackgroundColor: Colors.white,
                        expandedAlignment: Alignment.topLeft,
                        childrenPadding: EdgeInsets.only(
                            top: 0,
                            bottom: 10,
                            right: 10,
                            left: 15
                        ),

                        children: [
                          Container(

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Your Current Location",style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.black
                                ),),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            spreadRadius: 2,
                            blurRadius: 10,

                          ),
                        ],

                      ),
                      child: ExpansionTile(
                        title: Text("Date",style: GoogleFonts.poppins(),),
                        backgroundColor: Colors.white,
                        iconColor: Colors.pink,
                        textColor: Colors.pink,
                        collapsedBackgroundColor: Colors.white,
                        expandedAlignment: Alignment.topLeft,
                        childrenPadding: EdgeInsets.only(
                            top: 0,
                            bottom: 10,
                            right: 10,
                            left: 15
                        ),

                        children: [
                          Container(

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Today Date",style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.black
                                ),),


                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            spreadRadius: 2,
                            blurRadius: 10,

                          ),
                        ],

                      ),
                      child: ExpansionTile(
                        title: Text("Gender",style: GoogleFonts.poppins(),),
                        backgroundColor: Colors.white,
                        iconColor: Colors.pink,
                        textColor: Colors.pink,
                        collapsedBackgroundColor: Colors.white,
                        expandedAlignment: Alignment.topLeft,
                        childrenPadding: EdgeInsets.only(
                            top: 0,
                            bottom: 10,
                            right: 10,
                            left: 15
                        ),

                        children: [
                          Container(

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Gender",style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.black
                                ),),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )



            ],
          ),
        ),
      ),
    );
  }
}
