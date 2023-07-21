import 'package:clinic_app/find_doctor.dart';
import 'package:clinic_app/schedule.dart';
import 'package:clinic_app/subscription.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      home: find_doctor(),
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
  int page=1;
  PageController pageController1=PageController(initialPage: 1);
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
        schedule(),
        subscription(),
        Container(color: Colors.black,),
        Container(color: Colors.grey,),
        Container(color: Colors.green,),
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


