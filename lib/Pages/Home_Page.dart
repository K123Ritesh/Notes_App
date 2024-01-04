import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:notes_app/Custom_Widgets/Sem_card.dart';
import 'package:notes_app/Pages/Semester_Page.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  void go_To_page(int n) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Semester_Page(
                  sub_code: n,
                )));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor:
            Colors.transparent, // Set status bar color to transparent
      ),
    );
    return ListView(children: [
      SizedBox(
        height: 5,
      ),
      MyContainer(
          subjectName: "B.Tech(CSE)",
          onPressed: () {
            go_To_page(0);
          }),
      MyContainer(
          subjectName: "B.Tech(IT)",
          onPressed: () {
            go_To_page(1);
          }),
      MyContainer(
          subjectName: "B.Tech(ECE)",
          onPressed: () {
            go_To_page(2);
          }),
      MyContainer(
          subjectName: "B.Tech(ME)",
          onPressed: () {
            go_To_page(3);
          }),
      MyContainer(
          subjectName: "B.Tech(EE)",
          onPressed: () {
            go_To_page(4);
          }),
      MyContainer(
          subjectName: "B.Tech(CE)",
          onPressed: () {
            go_To_page(5);
          }),
      MyContainer(
          subjectName: "M.Tech(IT)",
          onPressed: () {
            go_To_page(1);
          }),
      MyContainer(
          subjectName: "M.Tech(CSE)",
          onPressed: () {
            go_To_page(1);
          }),
      MyContainer(
          subjectName: "BioInformatics",
          onPressed: () {
            go_To_page(1);
          }),
      MyContainer(
          subjectName: "BCA",
          onPressed: () {
            go_To_page(1);
          }),
      MyContainer(
          subjectName: "MCA",
          onPressed: () {
            go_To_page(1);
          }),
      MyContainer(
          subjectName: "BBA",
          onPressed: () {
            go_To_page(1);
          }),
      MyContainer(
          subjectName: "MBA",
          onPressed: () {
            go_To_page(1);
          }),
      MyContainer(
          subjectName: "B.sc(IT)",
          onPressed: () {
            go_To_page(1);
          }),
      MyContainer(
          subjectName: "Notes-1",
          onPressed: () {
            go_To_page(1);
          }),
      MyContainer(
          subjectName: "Notes-2",
          onPressed: () {
            go_To_page(1);
          }),
      MyContainer(
          subjectName: "Notes-3",
          onPressed: () {
            go_To_page(1);
          })
    ]);
  }
}
