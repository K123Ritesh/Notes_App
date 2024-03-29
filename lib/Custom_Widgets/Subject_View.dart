import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:notes_app/Pages/Read_Pdf_Page.dart';

// class Subject_Widget extends StatelessWidget {
//   final String url;
//   final String subjectName;
//   const Subject_Widget(
//       {super.key, required this.subjectName, required this.url});

//   void openPDF(BuildContext context, File file) => Navigator.of(context).push(
//         MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)),
//       );

//   void showToast(String msg) {
//     Fluttertoast.showToast(
//         msg: msg,
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.CENTER,
//         timeInSecForIosWeb: 1,
//         textColor: Colors.white,
//         fontSize: 16.0);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//         child: Column(children: [
//           Row(
//             children: [Text(subjectName, style: TextStyle(fontSize: 25))],
//           ),
//           SizedBox(height: 20),
//           Row(
//             children: [
//               SizedBox(
//                 width: 150,
//               ),
//               ElevatedButton(
//                   onPressed: () async {
//                     int x = 0;
//                     // final url = 'Syllabus.pdf';
//                     final file = await PDFApi.loadFirebase(url);

//                     if (file == null) {
//                       x = 0;
//                       showToast("Failed to Connect !! Check Internet ..");
//                       return;
//                     }
//                     showToast("Wait a minute loading the file");
//                     openPDF(context, file);
//                   },
//                   child: Text("Read", style: TextStyle(fontSize: 20))),
//               SizedBox(
//                 width: 15,
//               ),
//               ElevatedButton(
//                   onPressed: () async {
//                     // final url = 'Syllabus.pdf';
//                     final file = await PDFApi.loadFirebase(url);

//                     if (file == null) return;
//                     openPDF(context, file);
//                   },
//                   child: Text("Download ", style: TextStyle(fontSize: 20)))
//             ],
//           )
//         ]),
//         elevation: 30,
//         shadowColor: Color.fromARGB(255, 0, 0, 0));
//   }
// }

class MyContainer11 extends StatelessWidget {
  final String url;
  final String subjectName;
  const MyContainer11(
      {super.key, required this.subjectName, required this.url});

  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)),
      );

  void showToast(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 130,
        width: 390,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 204, 128, 235),
              Color.fromARGB(255, 255, 121, 193)
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    int x = 0;
                    // final url = 'Syllabus.pdf';
                    final file = await PDFApi.loadFirebase(url);

                    if (file == null) {
                      x = 0;
                      showToast("Failed to Connect !! Check Internet ..");
                      return;
                    }
                    showToast("Wait a minute loading the file");
                    openPDF(context, file);
                  },
                  child: Text(
                    "Read",
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
                ElevatedButton(
                  onPressed: () async {
                    int x = 0;
                    // final url = 'Syllabus.pdf';
                    final file = await PDFApi.loadFirebase(url);

                    if (file == null) {
                      x = 0;
                      showToast("Failed to Connect !! Check Internet ..");
                      return;
                    }
                    showToast("Wait a minute loading the file");
                    openPDF(context, file);
                  },
                  child: Text(
                    "Download",
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
