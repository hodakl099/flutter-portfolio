import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/custom_colors.dart';


class DefaultButton extends StatelessWidget {
  const DefaultButton({
     Key? key,
    required this.imageSrc,
    required this.text,
    required this.press,
    this.fontSize = 14,
    this.imageHeight = 40
  }) : super(key: key);

  final String imageSrc, text;
  final double fontSize,imageHeight;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding,
          horizontal: kDefaultPadding * 2.5,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        primary: CustomColors.gray,
        foregroundColor: CustomColors.primary
      ),
      onPressed: press,
      child: Row(
        children: [
          Image.asset(imageSrc, height: imageHeight),
          const SizedBox(width: kDefaultPadding),
          Text(
              text,
            style: TextStyle(
              fontSize: fontSize
            ),
          ),
        ],
      ),
    );
  }
}