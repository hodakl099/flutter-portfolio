import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/screens/portfolio.dart';
import 'package:portfolio/utils/custom_colors.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor:CustomColors.primary, 
    statusBarColor: CustomColors.primary, 
  ));
  runApp( MaterialApp(
    theme: ThemeData(primaryColor:
     CustomColors.primary,
     splashColor: CustomColors.primary,
     highlightColor:CustomColors.primary,
     
     ),
    title: 'Mahmoud-Alkateb-dev',
    home: const Portfolio(),
    debugShowCheckedModeBanner: false,
  ));
}
