import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  final String subjectName;
  final VoidCallback onPressed;

  const CustomCardWidget({
    required this.subjectName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
          child: Column(children: [
            Row(
              children: [SizedBox(width:20),Text(subjectName, style: TextStyle(fontSize: 25))],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(
                  width: 200,
                ),
                ElevatedButton(
                    onPressed: onPressed,
                    child:
                        Text("Start Learning",style: TextStyle(fontSize: 20),))
              ],
            )
          ]),
          elevation: 30,
          shadowColor: Color.fromARGB(255, 35, 34, 34))
    ;
  }
}
