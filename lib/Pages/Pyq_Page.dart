import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:notes_app/Custom_Widgets/Sem_card.dart';

class Pyq_Page extends StatefulWidget {
  const Pyq_Page({super.key});

  @override
  State<Pyq_Page> createState() => _Pyq_PageState();
}

class _Pyq_PageState extends State<Pyq_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 249, 229, 168),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),  SizedBox(height: 20,),
              Text(
                "Under Process",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ));
  }
}
