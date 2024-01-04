import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:notes_app/UserDetails.dart';

class Drawer_Page extends StatelessWidget {
  const Drawer_Page({super.key});
  static int  _step=1;

  static UserDetails newUser=UserDetails();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:60.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Drawer(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Timeline",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    "Log Out",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.close,
                      ))
                ],
              ),
              SizedBox(height: 15.0),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Text("Welcome 🥳 \n${newUser.Name}",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23,color: Colors.blueGrey)),
              ),
                 SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Step $_step to 3',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 10.0,
                  child: LinearProgressIndicator(
                    value:
                        0.25, // Set the progress value according to the current step
                    backgroundColor: Colors.grey[200],
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.lightBlue),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 9.0, vertical: 5.0),
                child: Card(
                  color: Color.fromARGB(255, 174, 167, 254),
                  child: ListTile(
                    title: Text(
                      'Step 1',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("Account Creation"),
                    leading: Icon(Icons.person),
                    trailing: Icon(
                      Icons.check_circle_rounded,
                      color: Colors.red,
                    ),
                    onTap: () {
                      // Step 1 logic
                    },
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 9.0, vertical: 5.0),
                child: Card(
                  color: Color.fromARGB(255, 166, 240, 184),
                  child: ListTile(
                    title: Text(
                      'Step 2',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Purchase Course",
                    ),
                    leading: Icon(Icons.payment),
                    trailing: Icon(
                      Icons.check_circle_rounded,
                      color: Colors.white,
                    ),
                    onTap: () {
                      // Step 2 logic
                    },
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Card(
                  color: Color.fromARGB(255, 237, 157, 157),
                  child: ListTile(
                    title: Text(
                      'Step 3',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Start Learning",
                    ),
                    leading: Icon(Icons.book_online_outlined),
                    trailing: Icon(
                      Icons.check_circle_rounded,
                      color: Colors.white,
                    ),
                    onTap: () {
                      // Step 3 logic
                    },
                  ),
                ),
              ),
              Lottie.asset(
                'lib/assets/Gift_Box.json',
                width: 10,
                height: 100,
                fit: BoxFit.contain,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Text("🤩 Congratulations First step Completed 🥳",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24,color: Colors.blueAccent)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 70,
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Get Help ?",style: TextStyle(color: Colors.white,fontSize: 17),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                   // Background color
                      ),
                    ),
                  ],
                ),
                color: Color.fromARGB(229, 231, 215, 215),
              )
            ],
          ),

        ),
      ),
    );
  }
}
