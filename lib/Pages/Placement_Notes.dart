import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:notes_app/Custom_Widgets/Subject_View.dart';

class PlacementNotes_Page extends StatelessWidget {
  const PlacementNotes_Page({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor:
            Colors.transparent, // Set status bar color to transparent
      ),
    );
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 229, 168),
      body: ListView(
        children: [
          SizedBox(
            height: 5,
          ),
          MyContainer11(
            subjectName: "Data Stucture and Algrithms",
            url: "Syllabus.pdf",
          ),
          MyContainer11(
              subjectName: "Object Oriented Programming", url: "Syllabus.pdf"),
          MyContainer11(subjectName: "Operating System", url: "Syllabus.pdf"),
          MyContainer11(
              subjectName: "Computer Networks", url: "offer_Letter.pdf"),
          MyContainer11(
              subjectName: "Gooogle Interview Experience", url: "Syllabus.pdf"),
          MyContainer11(
              subjectName: "Meta Interview Experience", url: "Syllabus.pdf"),
          MyContainer11(
              subjectName: "Amazon Interview Experience", url: "Syllabus.pdf"),
          MyContainer11(
              subjectName: "Microsoft Interview Experience",
              url: "offer_Letter.pdf"),
        ],
      ),
    );
    ;
  }
}
