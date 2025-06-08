import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predia/utils/color.dart';

class ReusableSubmitButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final TextStyle? textStyle;

  const ReusableSubmitButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.borderRadius = 30,
    this.padding = const EdgeInsets.symmetric(vertical: 16),
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? successColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: padding,
        ),
        child: Text(
          text,
          style: textStyle ?? GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w700, color: fillColor),
        ),
      ),
    );
  }
}