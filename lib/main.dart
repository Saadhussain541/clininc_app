import 'package:clinic_app/calender_screen.dart';
import 'package:clinic_app/find_doctor.dart';
import 'package:clinic_app/schedule.dart';
import 'package:clinic_app/splash_screen.dart';
import 'package:clinic_app/start_page.dart';
import 'package:clinic_app/subscription.dart';
import 'package:clinic_app/user_info.dart';
import 'package:clinic_app/user_info_2.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'clinic_pageView.dart';
import 'clinic_signup.dart';
import 'find_doctor1.dart';
void main()
{
  runApp(myApp());
}
class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Heart Clinic",
      home: splash_screen(),
      debugShowCheckedModeBanner: false,

    );
  }
}
class myHome extends StatefulWidget {
  const myHome({Key? key}) : super(key: key);

  @override
  State<myHome> createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  int page=2;
  PageController pageController1=PageController(initialPage: 2);
  Widget PageViewSection1()
  {
    return PageView(
      onPageChanged: (value)
      {
        setState(() {
          value=page;
        });
      },
      controller: pageController1,
      children: [
        find_doctor(),
        calender_screen(),
        user_info_2(),
        schedule(),
        subscription()
      ],



    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageViewSection1(),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [FontAwesomeIcons.grip,FontAwesomeIcons.gear,FontAwesomeIcons.user,FontAwesomeIcons.add,FontAwesomeIcons.bars],
        activeIndex: page,
        activeColor: Colors.pink,
        inactiveColor: Colors.grey,
        gapLocation: GapLocation.none,
        onTap: (p0)
        {
          page=p0;
          pageController1.animateToPage(p0, duration: Duration(milliseconds: 400), curve: Curves.linear);
        },
      ),
    );
  }
}


