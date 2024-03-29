import 'package:flutter/material.dart';
import '../utils/constants.dart';



class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.color,
    this.fontSize = 64
  }) : super(key: key);

  final String title, subTitle;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      constraints: const BoxConstraints(maxWidth: 1110),
      height: 100,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: kDefaultPadding),
            padding: const EdgeInsets.only(bottom: 72),
            width: 8,
            height: 100,
            color: Colors.black,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: color,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                subTitle,
                style:
                const TextStyle(fontWeight: FontWeight.w200, color: kTextColor, fontSize: 11),
              ),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black, fontSize: fontSize),
              )
            ],
          )
        ],
      ),
    );
  }
}