import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.textColor,
    required this.backGroundColor,
    this.borderRadius,
    this.fontSize,
    required this.text,
  });
  final Color textColor;
  final Color backGroundColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backGroundColor,
          foregroundColor: textColor,
          padding: const EdgeInsets.all(16.0),
          textStyle: Styles.textStyle18
              .copyWith(fontWeight: FontWeight.w600, fontSize: fontSize),
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        onPressed: () {},
        child: Text(text),
      ),
    );
  }
}
