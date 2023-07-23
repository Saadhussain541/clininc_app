import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class user_info extends StatefulWidget {
  const user_info({Key? key}) : super(key: key);

  @override
  State<user_info> createState() => _user_infoState();
}

class _user_infoState extends State<user_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: user_info_body(),
    );
  }
}
class user_info_body extends StatefulWidget {
  const user_info_body({Key? key}) : super(key: key);

  @override
  State<user_info_body> createState() => _user_info_bodyState();
}

class _user_info_bodyState extends State<user_info_body> {
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
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.grey.shade200,
                              //     spreadRadius: 2,
                              //     blurRadius: 10,
                              //
                              //   ),
                              // ],
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey.shade300,
                                  width: 3
                                )
                              )

                            ),
                            child: ExpansionTile(
                              title: Text("Medical Records",style: GoogleFonts.poppins(
                                fontSize: 17,
                                fontWeight: FontWeight.w600
                              ),),
                              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15),


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
                                      Text("Medical Record1",style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.black
                                      ),),
                                      Text("Medical Record2",style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.black
                                      ),),
                                      Text("Medical Record3",style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.black
                                      ),),
                                      Text("Medical Record4",style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.black
                                      ),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.grey.shade200,
                              //     spreadRadius: 2,
                              //     blurRadius: 10,
                              //
                              //   ),
                              // ],
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey.shade300,
                                        width: 3
                                    )
                                )

                            ),
                            child: ExpansionTile(
                              title: Text("Messages",style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600
                              ),),
                              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15),


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
                                      Text("Message1",style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.black
                                      ),),
                                      Text("Message2",style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.black
                                      ),),
                                      Text("Message3",style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.black
                                      ),),
                                      Text("Message3",style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.black
                                      ),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.grey.shade200,
                              //     spreadRadius: 2,
                              //     blurRadius: 10,
                              //
                              //   ),
                              // ],
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey.shade300,
                                        width: 3
                                    )
                                )

                            ),
                            child: ExpansionTile(
                              title: Text("Clinics",style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600
                              ),),
                              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15),


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
                                      Text("Clinic1",style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.black
                                      ),),
                                      Text("Clinic2",style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.black
                                      ),),
                                      Text("Clinic3",style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.black
                                      ),),
                                      Text("Clinic4",style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.black
                                      ),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.grey.shade200,
                              //     spreadRadius: 2,
                              //     blurRadius: 10,
                              //
                              //   ),
                              // ],
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey.shade300,
                                        width: 3
                                    )
                                )

                            ),
                            child: ExpansionTile(
                              title: Text("News",style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600
                              ),),
                              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15),


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
                                      Text("News1",style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.black
                                      ),),
                                      Text("News1",style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.black
                                      ),),
                                      Text("News2",style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.black
                                      ),),
                                      Text("News3",style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.black
                                      ),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.grey.shade200,
                              //     spreadRadius: 2,
                              //     blurRadius: 10,
                              //
                              //   ),
                              // ],
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey.shade300,
                                        width: 3
                                    )
                                )

                            ),
                            child: ExpansionTile(
                              title: Text("Reminder",style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600
                              ),),
                              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15),


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
                                      Text("Reminder1",style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.black
                                      ),),

                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.grey.shade200,
                              //     spreadRadius: 2,
                              //     blurRadius: 10,
                              //
                              //   ),
                              // ],
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey.shade300,
                                        width: 3
                                    )
                                )

                            ),
                            child: ExpansionTile(
                              title: Text("Support",style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600
                              ),),
                              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15),


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
                                      Text("Support Text",style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.black
                                      ),),

                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
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

