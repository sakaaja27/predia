import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predia/utils/color.dart';

class ContentLogoTop extends StatelessWidget {
  final String text;
  final String imagePath;
  final Color? textColor;
  final double fontSize;
  final double imageSize;
  final FontWeight fontWeight;
  final double spacing;
  final EdgeInsetsGeometry padding;

  const ContentLogoTop({
    super.key,
    this.text = 'PreDia',
    this.imagePath = 'images/pred.png',
    this.textColor,
    this.fontSize = 20,
    this.imageSize = 50,
    this.fontWeight = FontWeight.w700,
    this.spacing = 8,
    this.padding = const EdgeInsets.only(top: 20.0),
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: padding,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: imageSize, height: imageSize),
            SizedBox(width: spacing),
            Text(
              text,
              style: GoogleFonts.poppins(
                color: textColor ?? customGreenColor,
                fontSize: fontSize,
                fontWeight: fontWeight,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}