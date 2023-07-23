import 'dart:html';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:google_fonts/google_fonts.dart';
class calender_screen extends StatefulWidget {
  const calender_screen({Key? key}) : super(key: key);

  @override
  State<calender_screen> createState() => _calender_screenState();
}

class _calender_screenState extends State<calender_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: calender_screen_body(),
    );
  }
}
class calender_screen_body extends StatefulWidget {
  const calender_screen_body({Key? key}) : super(key: key);

  @override
  State<calender_screen_body> createState() => _calender_screen_bodyState();
}

class _calender_screen_bodyState extends State<calender_screen_body> {
  DateTime today=DateTime.now();
  void _selectDay(DateTime day,DateTime focusDay)
  {
    setState(() {
      today=day;
    });
  }
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
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 40,horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade400,
                                spreadRadius: 2,
                                blurRadius: 10,

                              ),
                            ],
                          color: Colors.white
                        ),
                        child: TableCalendar(
                          calendarStyle: CalendarStyle(

                          ),
                          firstDay: DateTime.utc(2001,1,1),
                          lastDay: DateTime.utc(2025,12,29),
                          focusedDay: today,
                          headerStyle: HeaderStyle(
                             formatButtonVisible: false,
                            titleCentered: true,
                            
                          ),
                          availableGestures: AvailableGestures.all,
                          selectedDayPredicate: (day) => isSameDay(day,today),
                          onDaySelected: _selectDay,
                        ),
                      ),

                      Text("Select admission date",style: GoogleFonts.poppins(
                        fontSize: 20,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w600
                      ),),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 0,horizontal: 20),
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
                                title: Text("Doctor",style: GoogleFonts.poppins(),),
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
                                        Text("Doctor",style: GoogleFonts.poppins(
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
                              height: 15,
                            ),
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
                                title: Text("City",style: GoogleFonts.poppins(),),
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
                                        Text("Karchi",style: GoogleFonts.poppins(
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
                      ),
                    ],
                  )



                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
