import 'package:flutter/material.dart';
import 'package:portfolio/models/project_model.dart';

Color kGradient1 = Colors.black;
Color kGradient2 = Colors.blueGrey;

String imagePath = "images/Mypic.png";

String name = "Usaid Asif";
String username = "Usaid-Dev";

String resumeLink =
    "https://drive.google.com/file/d/1uxwK6qs5bL-HfTDABA3opdHGfbkVwDl5/view?usp=drive_link";

String contactEmail = "usaidasif12@gmail.com";

String aboutWorkExperience = '''
I am a young and passionate software developer who started mobile application development using Java language . Then did the course of flutter from Sir Syed University . I have almost 1 year of experience in flutter development and making some custom applications to make my skills better . You can check those applications on github...

''';

String aboutMeSummary = '''
Hello,

People of the World! I'm Usaid, an experienced software developer specializing in Android and iOS app development. Whether you need a stunning Android app or a sleek iOS solution, I've got the skills to bring your ideas to life. Feel free to drop me a text to discuss your project and let's make it a reality. Thanks for considering me, and I can't wait to work with you!

''';

String location = "Karachi, Pakistan";
String website = "";
String portfolio = "";
String email = "usaidasif12@gmail.com";

List<Project> projectList = [
  Project(
    name: "Google Map",
    description: "Integrate google map in IOS & Android",
    link: "https://github.com/Usaid-Dev/google_map",
  ),
  Project(
    name: "Qibla Finder",
    description:
        "A completely responsive Qibla-Finder App- Works on Android & IOS",
    link: "https://github.com/Usaid-Dev/qibla_finder",
  ),
  Project(
    name: "Chatgpt App",
    description: "A completely responsive Chatgpt App- Works on Android & IOS",
    link: "https://github.com/Usaid-Dev/flutter_chatgpt",
  ),
  Project(
    name: "Practice Api",
    description: "In this project I learned about implementing Apis",
    link: "https://github.com/Usaid-Dev/practice_api",
  )
];
