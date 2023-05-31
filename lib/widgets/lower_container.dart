import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/breakpoints.dart';
import 'package:portfolio/utils/custom_colors.dart';
import 'package:portfolio/utils/image_asset_constants.dart';
import 'package:portfolio/widgets/hello_with_bio.dart';
import 'package:portfolio/widgets/info.dart';
import 'package:portfolio/widgets/intrest.dart';
import 'package:portfolio/widgets/skill_card.dart';

class LowerContainer extends StatelessWidget {
  final double width;
  final List<Map> intrests;
  final GlobalKey intrestsKey;
  final GlobalKey skillsKey;

  const LowerContainer(
      {Key? key,
      required this.width,
      required this.intrests,
      required this.intrestsKey,
      required this.skillsKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        key: skillsKey,
        color: CustomColors.darkBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth >= Breakpoints.lg) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // skills cards
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SkillCard(
                            title: 'Android Development',
                            description:
                            'I’m developing Android apps using standard Android libraries, XML, and jetpack compose.',
                            icon: ImageAssetConstants.jetpackCompose,
                            width: width,
                            ratio: 0.35),
                        const SizedBox(height: 10),
                        SkillCard(
                          title: 'Backend Development',
                          description:
                              'I’m developing server-side applications using Ktor libraries.',
                          icon: ImageAssetConstants.ktor,
                          width: width,
                          ratio: 0.35,
                        ),
                        const SizedBox(height: 10),
                        SkillCard(
                            title: 'Flutter Development',
                            description:
                                'I’m developing cross-platform projects using standard Flutter libraries.',
                            icon: ImageAssetConstants.flutterLogo,
                            width: width,
                            ratio: 0.35),
                      ],
                    ),
                    SizedBox(width: 0.05 * width),
                    // hello with bio and info
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        HelloWithBio(
                          ratio:0.4 ,
                          width: width,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Info(width: width,ratio:0.4)
                      ],
                    )
                  ],
                );
              }  else {
              return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              // skills cards
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SkillCard(
              title: 'Android Development',
              description:
              'I’m developing Android apps using standard Android libraries, XML, and jetpack compose.',
              icon: ImageAssetConstants.jetpackCompose,
              width: width,
              ratio: 0.35),
              const SizedBox(height: 10),
              SkillCard(
              title: 'Backend Development',
              description:
              'I’m developing server-side applications using Ktor libraries.',
              icon: ImageAssetConstants.ktor,
              width: width,
              ratio: 0.35,
              ),
              const SizedBox(height: 10),
              SkillCard(
              title: 'Flutter Development',
              description:
              'I’m developing cross-platform projects using standard Flutter libraries.',
              icon: ImageAssetConstants.flutterLogo,
              width: width,
              ratio: 0.35),
              ],
              ),
              // hello with bio and info
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const SizedBox(
              height: 30,
              ),
              HelloWithBio(width: 3 * width,ratio: 0.3,),
              const SizedBox(
              height: 35,
              ),
              Info(width: 3 * width,ratio:0.3),
              ],
              )
              ],
              );
              }
            }),
            SizedBox(
              height: width * 0.07,
            ),
          ],
        ));
  }
}
