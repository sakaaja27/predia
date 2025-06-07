import 'package:flutter/material.dart';
import 'package:predia/utils/color.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 4000), () {
      Get.offAllNamed('/boardingOne');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/prediaLogo.png',
                width: 200,
                height: 200,
              ),

              // Text(
              //   'PreDia',
              //   style: GoogleFonts.montserrat(
              //     fontSize: 26,
              //     fontWeight: FontWeight.bold,
              //     color: successColor,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
