import 'package:flutter/material.dart';
import 'package:predia/utils/color.dart';
import 'package:predia/widget/reusableContentBottom.dart';
import 'package:predia/widget/reusableTopLogo.dart';
import 'package:get/get.dart';


class BoardinOne extends StatelessWidget {
  const BoardinOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background_phone.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(color: Colors.black.withOpacity(0.5)),
          ContentLogoTop(
            text: 'PreDia',
            imagePath: 'assets/images/pred.png',
            textColor: customGreenColor,
            fontSize: 22,
            imageSize: 48,
          ),
          ReusableContentBottom(
            title: 'Haii Sobat Predia',
            subtitle:
                'Kenali Tubuhmu dengan PreDia. Langkah Awal Menuju Hidup Sehat, Bebas Risiko Diabetes!',
            onNext: () {
              Get.toNamed('/boardingTwo');
            },
          ),
        ],
      ),
    );
  }
}
