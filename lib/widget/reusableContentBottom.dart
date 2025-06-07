import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predia/utils/color.dart';

class ReusableContentBottom extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback? onNext;
  final Color? titleColor;
  final Color? subtitleColor;
  final double titleFontSize;
  final double subtitleFontSize;

  const ReusableContentBottom({
    super.key,
    required this.title,
    required this.subtitle,
    this.onNext,
    this.titleColor,
    this.subtitleColor,
    this.titleFontSize = 22,
    this.subtitleFontSize = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 40.0, left: 20.0, right: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                color: greenblack.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: titleColor ?? backgroundColor,
                      fontSize: titleFontSize,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: subtitleColor ?? Colors.white,
                      fontSize: subtitleFontSize,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [customGreenColor, primaryColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: onNext,
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
