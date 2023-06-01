import 'package:flutter/material.dart';
import 'package:portfolio/widgets/DefaultButton.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/RecentWork.dart';
import '../../utils/constants.dart';
import '../../utils/custom_colors.dart';


class RecentWorkCard extends StatefulWidget {
  const RecentWorkCard({
    required Key? key,
    required this.index,
    required this.press,
    required this.url
  }) : super(key: key);

  final int index;
  final VoidCallback press;
  final String url;

  @override
  _RecentWorkCardState createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:  widget.press ,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        height: 320,
        width: 540,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(
          children: [
            Image.asset(recentWorks[widget.index].image),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(recentWorks[widget.index].category.toUpperCase()),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(
                      recentWorks[widget.index].title,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(height: 1.5),
                    ),
                
                    SizedBox(height: kDefaultPadding),
               TextButton(
                    style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(
            vertical: kDefaultPadding,
            horizontal: kDefaultPadding * 2.5,
            ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          primary: CustomColors.gray,
          foregroundColor: CustomColors.primary
      ),
      onPressed: () async =>
                   await launch(widget.url), child: const Text('View Details'),
               ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}