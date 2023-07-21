import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
class find_doctor extends StatefulWidget {
  const find_doctor({Key? key}) : super(key: key);

  @override
  State<find_doctor> createState() => _find_doctorState();
}

class _find_doctorState extends State<find_doctor> {
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
                            colors: [Colors.blue,Colors.blue.shade200]
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
                  )



                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child:Column(
                  children: [
                    doctor_card(
                      doctor_name: "Dr Ahmed",
                      doctor_address: "Karachi",
                      doctor_detail: "Doctor Category",
                      doctor_rating: "4.7",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    doctor_card(
                      doctor_name: "Dr Imran",
                      doctor_address: "Karachi",
                      doctor_detail: "Doctor Category",
                      doctor_rating: "4.2",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    doctor_card(
                      doctor_name: "Dr Ilyas",
                      doctor_address: "Karachi",
                      doctor_detail: "Doctor Category",
                      doctor_rating: "4.0",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    doctor_card(
                      doctor_name: "Dr Bilal",
                      doctor_address: "Karachi",
                      doctor_detail: "Doctor Category",
                      doctor_rating: "3.6",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    doctor_card(
                      doctor_name: "Dr Hasnain",
                      doctor_address: "Karachi",
                      doctor_detail: "Doctor Category",
                      doctor_rating: "5.1",
                    ),
                    SizedBox(
                      height: 20,
                    ),doctor_card(
                      doctor_name: "Dr Ebad",
                      doctor_address: "Karachi",
                      doctor_detail: "Doctor Category",
                      doctor_rating: "5.2",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    doctor_card(
                      doctor_name: "Dr Ahmed",
                      doctor_address: "Karachi",
                      doctor_detail: "Doctor Category",
                      doctor_rating: "4.7",
                    ),
                    SizedBox(
                      height: 20,
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

class doctor_card extends StatelessWidget {
  String doctor_name;
  String doctor_detail;
  String doctor_address;
  String doctor_rating;


  doctor_card(
      {required this.doctor_name,
      required this.doctor_detail,
      required this.doctor_address,
      required this.doctor_rating});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                  child: Icon(FontAwesomeIcons.user,color: Colors.white
                    ,),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("$doctor_name",style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),),
                    SizedBox(height: 2,),
                    Text("$doctor_detail",style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey
                    ),),
                    SizedBox(height: 3,),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.locationDot,color: Colors.pink,),
                        SizedBox(width: 2,),
                        Text("$doctor_address",style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700
                        ),)
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),

          Container(
            child: Column(
              children: [
                Icon(FontAwesomeIcons.star,color: Colors.pink,),
                SizedBox(
                  height: 5,
                ),
                Text("$doctor_rating",style: GoogleFonts.poppins(fontSize: 30,fontWeight: FontWeight.w800),)
              ],
            ),
          )
        ],
      ),
    );
  }
}

