import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:notes_app/Custom_Widgets/Subject_View.dart';

class PlacementNotes_Page extends StatelessWidget {
  const PlacementNotes_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 229, 168),
      body: ListView(
        children: [
          SizedBox(height: 5,),
          Subject_Widget(subjectName: "Data Stucture and Algrithms",url: "Syllabus.pdf",),
          Subject_Widget(subjectName: "Object Oriented Programming",url: "Syllabus.pdf"),
          Subject_Widget(subjectName: "Operating System",url: "Syllabus.pdf"),
          Subject_Widget(subjectName: "Computer Networks",url: "offer_Letter.pdf"),
          Subject_Widget(subjectName: "Gooogle Interview Experience",url: "Syllabus.pdf"),
          Subject_Widget(subjectName: "Meta Interview Experience",url: "Syllabus.pdf"),
          Subject_Widget(subjectName: "Amazon Interview Experience",url: "Syllabus.pdf"),
          Subject_Widget(subjectName: "Microsoft Interview Experience",url: "offer_Letter.pdf"),
        ],
      ),
    );
    ;
  }
}
