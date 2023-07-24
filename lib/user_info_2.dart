import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'user_info.dart';
class user_info_2 extends StatefulWidget {
  const user_info_2({Key? key}) : super(key: key);

  @override
  State<user_info_2> createState() => _user_info_2State();
}

class _user_info_2State extends State<user_info_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: user_info_2_body(),
    );
  }
}
class user_info_2_body extends StatefulWidget {
  const user_info_2_body({Key? key}) : super(key: key);

  @override
  State<user_info_2_body> createState() => _user_info_2_bodyState();
}

class _user_info_2_bodyState extends State<user_info_2_body> {
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
                      top: 30,

                    ),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            spreadRadius: 2,
                            blurRadius: 10,

                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.login_outlined,color: Colors.grey,
                            size: 30,
                          ),
                          Container(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
                                    radius: 60,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  child: Text("Your Name",style: GoogleFonts.poppins(
                                      color: Colors.black54,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1
                                  ),),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Divider(
                              thickness: 3,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Icon(Icons.calendar_month,color: Colors.pink),
                                        SizedBox(width: 10,),
                                        Text("23 July 2023",style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1

                                        ),)
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Icon(Icons.monitor_weight_outlined,color: Colors.pink),
                                        SizedBox(width: 10,),
                                        Text("50 kg",style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1

                                        ),)
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Icon(Icons.location_pin,color: Colors.pink),
                                        SizedBox(width: 10,),
                                        Text("Karachi",style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1

                                        ),)
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Icon(Icons.scale,color: Colors.pink),
                                        SizedBox(width: 10,),
                                        Text("165 cm",style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1

                                        ),)
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),

                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Divider(
                              thickness: 3,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            child: Container(
                              child: Row(
                                children: [
                                  Icon(Icons.phone,color: Colors.pink),
                                  SizedBox(width: 10,),
                                  Text("123456789",style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1

                                  ),)
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Container(
                              child: Row(
                                children: [
                                  Icon(Icons.alternate_email,color: Colors.pink),
                                  SizedBox(width: 10,),
                                  Text("abc@gmail.com",style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1

                                  ),)
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Divider(
                              thickness: 3,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Medical History",style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w700
                          ),),
                          SizedBox(height: 5,),
                          Text(" is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like",style: GoogleFonts.poppins(
                            fontSize: 16
                          ),),
                          SizedBox(height: 10,),
                          Container(
                            width: double.infinity,
                            alignment: Alignment.center,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.pink)
                              ),
                              child: Text("More Info"),
                              onPressed: (){
                                Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: user_info()));
                              },
                            ),
                          )



                        ],
                      ),
                    ),
                  )



                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

