import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/breakpoints.dart';
import 'package:portfolio/widgets/recent_work/recent_work_card.dart';
import '../../models/RecentWork.dart';
import '../../utils/constants.dart';
import '../hire_me_card.dart';
import '../section_title.dart';



class RecentWorkWidget extends StatelessWidget {
  final GlobalKey recentWorkKey;
  
  const RecentWorkWidget({Key? key, required this.recentWorkKey}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
      if(constraints.maxWidth >= 1100) {
        return Container(
          key: recentWorkKey,
          margin: const EdgeInsets.only(top: kDefaultPadding * 6),
          width: double.infinity,
          // just for demo
          // height: 600,
          decoration: const BoxDecoration(
            color: Color(0xff424346),
          ),
          child: Column(
            children: [
              Transform.translate(
                offset: Offset(0, -80),
                child: HireMeCard(),
              ),
              const SectionTitle(
                title: "Recent Projects",
                subTitle: "My Strong Arenas",
                color: Color(0xFFFFB100),
              ),
              SizedBox(height: kDefaultPadding * 1.5),
              SizedBox(
                width: 1110,
                child: Wrap(
                  spacing: kDefaultPadding,
                  runSpacing: kDefaultPadding * 2,
                  children: List.generate(
                    recentWorks.length,
                        (index) =>
                        RecentWorkCard(index: index,
                          press: () {},
                          key: null,
                          url: recentWorks[index].url,),
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding * 5),
            ],
          ),
        );
      } else if(constraints.maxWidth >= Breakpoints.lg) {
        return Container(
          key: recentWorkKey,
          margin: const EdgeInsets.only(top: kDefaultPadding * 1),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff424346),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.translate(
                offset: Offset(0, -80),
                child: HireMeCard(),
              ),
              const SectionTitle(
                title: "Recent Projects",
                subTitle: "My Strong Arenas",
                color: Color(0xFFFFB100),
              ),
              SizedBox(height: kDefaultPadding * 1.5),
              SizedBox(
                width: 900,
                child: Column(
                  children: List.generate(
                    recentWorks.length,
                        (index) =>
                        RecentWorkCard(index: index,
                          press: () {},
                          key: null,
                          url: recentWorks[index].url,)
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding * 5),
            ],
          ),
        );
      } else {
        return Container(
          key: recentWorkKey,
          margin: const EdgeInsets.only(top: kDefaultPadding * 6),
          width: double.infinity,
          // just for demo
          // height: 600,
          decoration: const BoxDecoration(
            color: Color(0xff424346),
          ),
          child: Column(
            children: [
              Transform.translate(
                offset: Offset(0, -80),
                child: HireMeCard(),
              ),
              const SectionTitle(
                title: "Recent Projects",
                subTitle: "My Strong Arenas",
                color: Color(0xFFFFB100),
              ),
              SizedBox(height: kDefaultPadding * 1.5),
              SizedBox(
                width: 1110,
                child: Wrap(
                  spacing: kDefaultPadding,
                  runSpacing: kDefaultPadding * 2,
                  children: List.generate(
                    recentWorks.length,
                        (index) =>
                        RecentWorkCard(index: index,
                          press: () {},
                          key: null,
                          url: recentWorks[index].url,),
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding * 5),
            ],
          ),
        );
      }
    }
    );
  }
}