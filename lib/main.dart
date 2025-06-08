import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:predia/screen/auth/login.dart';
import 'package:predia/screen/home/home.dart';
import 'package:predia/screen/onBoarding/BoardingOne.dart';
import 'package:predia/screen/auth/register.dart';
import 'package:predia/screen/auth/splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predia/screen/onBoarding/BoardingTwo.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.montserratTextTheme()),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      getPages: [
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/register', page: () => RegisterScreen()),
        GetPage(name: '/boardingOne', page: () => BoardinOne()),
        GetPage(name: '/boardingTwo', page: () => BoardingTwo()),
        GetPage(name: '/home', page: () => Home())
      ],
    );
  }
}
