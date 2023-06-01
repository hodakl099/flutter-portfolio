import 'package:flutter/material.dart';
class RecentWork {
  final String image, category, title;
  final int id;

  RecentWork({required this.id, required this.image, required this.category, required this.title});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "Guessing Word Android game.",
    category: "Android App",
    image: "assets/images/android.png",
  ),
  RecentWork(
    id: 2,
    title: "Ktor web-server side.",
    category: "Web server-side",
    image: "assets/images/server.png",
  ),
  RecentWork(
    id: 3,
    title: "Multi-Module architecture Calories Tracker Application",
    category: "Android-Jetpack compose.",
    image: "assets/images/work_3.png",
  ),
  RecentWork(
    id: 4,
    title: "New & Fresh Looking Portfolio indeed at the end",
    category: "Graphic Design",
    image: "assets/images/work_4.png",
  ),
];