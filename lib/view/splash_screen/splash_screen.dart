import 'package:flutter/material.dart';
import 'package:netflix_clone/utlils/color_constants.dart';
import 'package:netflix_clone/utlils/image_constants.dart';
import 'package:netflix_clone/view/get_started/get_started.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => GetStarted(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Image.asset(ImageConstants.LOGO)),
        backgroundColor: ColorConstants.mainBlack);
  }
}
