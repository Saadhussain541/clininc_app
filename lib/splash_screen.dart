import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:clinic_app/clinic_pageView.dart';
import 'package:clinic_app/main.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedSplashScreen(
          nextScreen: clinic_pageView(),
          splash: Image(
            image: AssetImage('assets/images/clinic_logo.png'),

          ),

          duration: 3000,
          splashTransition: SplashTransition.rotationTransition,
          animationDuration: Duration(milliseconds: 4000),
          pageTransitionType: PageTransitionType.bottomToTop,



          // pageTransitionType: FadeUpwardsPageTransitionsBuilder(),
        ),
      ),
    );
  }
}
