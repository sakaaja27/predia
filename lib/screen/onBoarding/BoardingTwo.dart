import 'package:flutter/material.dart';
import 'package:predia/utils/color.dart';
import 'package:predia/widget/reusableContentBottom.dart';
import 'package:predia/widget/reusableTopLogo.dart';


class BoardingTwo extends StatelessWidget {
  const BoardingTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background_hands.jpg'),
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
            title: 'Mulai Sehat dengan PreDia',
            subtitle:
                'Temukan Kendali Sehat bersama PreDia. Panduan Cerdas Anda untuk Mencegah Diabetes Sejak Dini!',
            onNext: () {},
          ),
        ],
      ),
    );
  }
}
