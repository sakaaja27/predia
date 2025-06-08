import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableContentTopAuth extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final double imageHeight;
  final double imageWidth;
  final double containerHeight;
  final EdgeInsetsGeometry padding;

  const ReusableContentTopAuth({
    super.key,
    this.imagePath = 'assets/images/pred.png',
    this.title = 'Selamat Datang di PreDia!',
    this.subtitle =
        'Kendalikan Gaya Hidupmu Hari Ini, Cegah Diabetes Esok Hari.',
    this.imageHeight = 40,
    this.imageWidth = 40,
    this.containerHeight = 200,
    this.padding = const EdgeInsets.only(top: 35, left: 30, right: 30),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      alignment: Alignment.topCenter,
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(imagePath),
            height: imageHeight,
            width: imageWidth,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
