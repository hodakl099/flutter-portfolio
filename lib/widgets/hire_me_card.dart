import 'package:flutter/material.dart';
import 'package:portfolio/utils/breakpoints.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/constants.dart';
import '../utils/custom_colors.dart';
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
          return InkWell(
            onTap: () =>  _launchURL(
                'mahmoud.alkateb22@gmail.com', 'subject', 'Inquiry') ,
            child: Container(
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
                   Expanded(
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
            ),
          );
        } else if(constraints.maxWidth >= Breakpoints.lg) {
          return InkWell(
            onTap: () =>  _launchURL(
                'mahmoud.alkateb22@gmail.com', 'subject', 'Inquiry') ,
            child: Container(
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
                   Expanded(
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
            ),
          );
        } else if(constraints.maxWidth >= 460){
          return InkWell(
            onTap: () =>  _launchURL(
                'mahmoud.alkateb22@gmail.com', 'subject', 'Inquiry') ,
            child: Container(
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
                   Expanded(
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
            ),
          );
        } else if(constraints.maxWidth >= 0) {
          return Expanded(
            child: InkWell(
              onTap: () =>  _launchURL(
                  'mahmoud.alkateb22@gmail.com', 'subject', 'Inquiry') ,
              child: Container(
                padding: EdgeInsets.all(10),
                constraints: BoxConstraints(maxWidth: 300),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [kDefaultShadow],
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/email.png",
                      height: 20,
                      width: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        height: 20,
                        child: VerticalDivider(),
                      ),
                    ),
                     Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Starting New Project?",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Get an estimate for the new project",
                            style: TextStyle(fontWeight: FontWeight.w200, fontSize: 8),
                          )
                        ],
                      ),
                    ),
                   TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 4,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        primary: CustomColors.gray,
                        foregroundColor: CustomColors.primary
                    ),
                    onPressed:  () {
                      _launchURL(
                          'mahmoud.alkateb22@gmail.com', 'subject', 'Inquiry');
                    },
                    child: Row(
                      children: [
                        Image.asset("assets/images/hand.png", height: 16),
                        const SizedBox(width: kDefaultPadding),
                        if(constraints.maxWidth < 140)   Expanded(
                          child: Text(
                            'Hire Me!',
                            style: TextStyle(
                                fontSize:   12
                            ),
                          ),
                        ) else   Expanded(
                          child: Text(
                            'Hire Me!',
                            style: TextStyle(
                                fontSize:   7
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ],
                ),
              ),
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
                Expanded(
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
                TextButton(
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 4,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      primary: CustomColors.gray,
                      foregroundColor: CustomColors.primary
                  ),
                  onPressed:  () {
                    _launchURL(
                        'mahmoud.alkateb22@gmail.com', 'subject', 'Inquiry');
                  },
                  child: Row(
                    children: [
                      Image.asset("assets/images/hand.png", height: 16),
                      const SizedBox(width: kDefaultPadding),
                      Text(
                        'Hire Me!',
                        style: TextStyle(
                            fontSize: 12
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }
      },
    );
  }
}
