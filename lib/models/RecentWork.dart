import 'package:flutter/material.dart';
class RecentWork {
  final String image, category, title, url;
  final int id;

  RecentWork({required this.id, required this.image, required this.category, required this.title, required this.url});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "Guessing Word Android game.",
    category: "Android App",
    image: "assets/images/android.png",
    url: "https://github.com/hodakl099/Guess-Craft",
  ),
  RecentWork(
    id: 2,
    title: "Ktor web-server side.",
    category: "Web server-side",
    image: "assets/images/server.png",
    url: "https://github.com/hodakl099/GuessCraft-Server",
  ),
  RecentWork(
    id: 3,
    title: "Multi-Module architecture Calories Tracker Application",
    category: "Android-Jetpack compose.",
    image: "assets/images/multi.png",
    url: "https://github.com/hodakl099/MultiModulrization-CalTrackerApp",
  ),
  RecentWork(
    id: 4,
    title: "A collection of Flutter applications.",
    category: "Flutter Development",
    image: "assets/images/flutterlog.png",
    url: "https://github.com/hodakl099/Flutter-Apps",
  ),
];