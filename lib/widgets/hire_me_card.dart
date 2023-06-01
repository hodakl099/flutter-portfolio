import 'package:flutter/material.dart';
import 'package:portfolio/utils/breakpoints.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/constants.dart';
import 'DefaultButton.dart';



class HireMeCard extends StatelessWidget {

  void _launchURL(String toMailId, String subject, String body) async {
    var url = 'mailto:$toMailId?subject=$subject&body=$body';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  const HireMeCard({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200) {
          return Container(
            padding: EdgeInsets.all(kDefaultPadding * 2),
            constraints: BoxConstraints(maxWidth: 1110),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [kDefaultShadow],
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/email.png",
                  height: 80,
                  width: 80,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: SizedBox(
                    height: 80,
                    child: VerticalDivider(),
                  ),
                ),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Starting New Project?",
                        style: TextStyle(
                            fontSize: 42, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: kDefaultPadding / 2),
                      Text(
                        "Get an estimate for the new project",
                        style: TextStyle(fontWeight: FontWeight.w200),
                      )
                    ],
                  ),
                ),
                DefaultButton(
                  text: "Hire Me!",
                  imageSrc: "assets/images/hand.png",
                  press: () {
                    _launchURL(
                        'mahmoud.alkateb22@gmail.com', 'subject', 'Inquiry');
                  },
                )
              ],
            ),
          );
        } else if(constraints.maxWidth >= Breakpoints.lg) {
          return Container(
            padding: EdgeInsets.all(kDefaultPadding * 2),
            constraints: BoxConstraints(maxWidth: 800),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [kDefaultShadow],
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/email.png",
                  height: 80,
                  width: 80,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: SizedBox(
                    height: 80,
                    child: VerticalDivider(),
                  ),
                ),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Starting New Project?",
                        style: TextStyle(
                            fontSize: 38, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: kDefaultPadding / 2),
                      Text(
                        "Get an estimate for the new project",
                        style: TextStyle(fontWeight: FontWeight.w200),
                      )
                    ],
                  ),
                ),
                DefaultButton(
                  text: "Hire Me!",
                  imageSrc: "assets/images/hand.png",
                  press: () {
                    _launchURL(
                        'mahmoud.alkateb22@gmail.com', 'subject', 'Inquiry');
                  },
                )
              ],
            ),
          );
        } else if(constraints.maxWidth >= 400){
          return Container(
            padding: EdgeInsets.all(12),
            constraints: BoxConstraints(maxWidth: 450),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [kDefaultShadow],
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/email.png",
                  height: 30,
                  width: 30,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: SizedBox(
                    height: 50,
                    child: VerticalDivider(),
                  ),
                ),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Starting New Project?",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: kDefaultPadding / 2),
                      Text(
                        "Get an estimate for the new project",
                        style: TextStyle(fontWeight: FontWeight.w200),
                      )
                    ],
                  ),
                ),
                DefaultButton(
                  text: "Hire Me!",
                  fontSize: 18,
                  imageHeight: 35,
                  imageSrc: "assets/images/hand.png",
                  press: () {
                    _launchURL(
                        'mahmoud.alkateb22@gmail.com', 'subject', 'Inquiry');
                  },
                )
              ],
            ),
          );
        } else {
          return Container(
            padding: EdgeInsets.all(kDefaultPadding * 2),
            constraints: BoxConstraints(maxWidth: 600),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [kDefaultShadow],
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/email.png",
                  height: 60,
                  width: 60,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: SizedBox(
                    height: 80,
                    child: VerticalDivider(),
                  ),
                ),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Starting New Project?",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: kDefaultPadding / 2),
                      Text(
                        "Get an estimate for the new project",
                        style: TextStyle(fontWeight: FontWeight.w200),
                      )
                    ],
                  ),
                ),
                DefaultButton(
                  text: "Hire Me!",
                  imageSrc: "assets/images/hand.png",
                  press: () {
                    _launchURL(
                        'mahmoud.alkateb22@gmail.com', 'subject', 'Inquiry');
                  },
                )
              ],
            ),
          );
        }
      },
    );
  }
}
