import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableCardAnalisis extends StatelessWidget {
  final String title;
  final String description;
  final Color backgroundColor;
  final String imagePath;
  final double height;
  final double imageWidth;
  final double imageHeight;
  final Color titleColor;
  final Color descColor;

  const ReusableCardAnalisis({
    super.key,
    required this.title,
    required this.description,
    required this.backgroundColor,
    required this.imagePath,
    this.height = 100,
    this.imageWidth = 80,
    this.imageHeight = 120,
    this.titleColor = Colors.black,
    this.descColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          height: height,
          width: double.infinity,
          decoration: BoxDecoration(
            color: backgroundColor,
          ),
          child: Stack(
            children: [
              Positioned(
                right: -30,
                bottom: -40,
                child: Image.asset(
                  imagePath,
                  width: imageWidth,
                  height: imageHeight,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        color: titleColor,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      description,
                      style: TextStyle(
                        color: descColor,
                        fontSize: 12,
                        height: 1.4,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}