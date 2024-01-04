import 'package:flutter/material.dart';

// class CustomCardWidget extends StatelessWidget {
//   final String subjectName;
//   final VoidCallback onPressed;

//   const CustomCardWidget({
//     required this.subjectName,
//     required this.onPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//           child: Column(children: [
//             Row(
//               children: [SizedBox(width:20),Text(subjectName, style: TextStyle(fontSize: 25))],
//             ),
//             SizedBox(height: 20,),
//             Row(
//               children: [
//                 SizedBox(
//                   width: 200,
//                 ),
//                 ElevatedButton(
//                     onPressed: onPressed,
//                     child:
//                         Text("Start Learning",style: TextStyle(fontSize: 20),))
//               ],
//             )
//           ]),
//           elevation: 30,
//           shadowColor: Color.fromARGB(255, 35, 34, 34))
//     ;
//   }
// }

class MyContainer extends StatelessWidget {
  final String subjectName;
  final VoidCallback onPressed;

  const MyContainer({
    required this.subjectName,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 130,
        width: 390,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 215, 248, 28),
              Color.fromARGB(255, 96, 249, 53)
            ],
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        padding: EdgeInsets.only(left: 30, top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$subjectName",
              style: TextStyle(
                color: Colors.black,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                SizedBox(
                  width: 160,
                ),
                ElevatedButton(
                  onPressed: onPressed,
                  child: Text(
                    "Start Learning",
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shadowColor: Colors.red,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      elevation: 20,
      shadowColor: Colors.amber,
      // color: Colors.red,
    );
  }
}
