import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:notes_app/Drawers_Page/Drawer_Page.dart';
import 'package:notes_app/Pages/Home_Page.dart';
import 'package:notes_app/Pages/More.dart';
import 'package:notes_app/Pages/Placement_Notes.dart';
import 'package:notes_app/Pages/Pyq_Page.dart';
import 'package:notes_app/UserDetails.dart';
import 'package:notes_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
  print("Ritesh");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/Home': (context) => Main_Page(),
        '/input_page': (context) => InputPage()
      },
      home: Splash_Screen(),
    );
  }
}

class Main_Page extends StatefulWidget {
  const Main_Page({super.key});

  @override
  State<Main_Page> createState() => _Main_PageState();
}

class _Main_PageState extends State<Main_Page> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openGiftCardOptions() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  int _currentIndex = 0;
  final List<Widget> _pages = [
    Home_Page(),
    Pyq_Page(),
    PlacementNotes_Page(),
    More_Page()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color.fromARGB(255, 235, 212, 212),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 179, 186, 249),
          title: Text(
            "WBUT Notes",
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
          bottom: AppBar(
              backgroundColor: Color.fromARGB(255, 179, 186, 249),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Welcome  to WBUT Notes",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SizedBox(width: 75),
              ]),
          actions: [
            SizedBox(height: 5),
            InkWell(
              onTap: () {
                _openGiftCardOptions();
              },
              child: Lottie.asset("lib/assets/Profile.json",
                  width: 40, height: 50, fit: BoxFit.fill),
            ),
            SizedBox(width: 15),
          ],
        ),
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            fixedColor: Colors.black,
            currentIndex: _currentIndex,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.question_answer_rounded,
                    color: Colors.black,
                  ),
                  label: "Discuss"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.engineering,
                    color: Colors.black,
                  ),
                  label: "Placements"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.more_horiz_sharp,
                    color: Colors.black,
                  ),
                  label: "Explore"),
            ]),
        endDrawer: Drawer_Page());
  }
}

UserDetails user = UserDetails();

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('/input_page');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome  to WBUT Notes",
              style: GoogleFonts.poppins(
                  fontSize: 30, fontWeight: FontWeight.w500, color: Colors.red),
            ),
            SizedBox(height: 105),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset("lib/assets/Splash_Screen.json",
                    width: 300, height: 300, fit: BoxFit.fill),
              ],
            ),
            SizedBox(height: 25),
            Text(
              "Created  By- Ritesh Shandilya",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ],
        ));
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String collegeName = '';
  String department = '';
  String code = '';

  int allDetailsFilled = 1;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor:
            Colors.transparent, // Set status bar color to transparent
      ),
    );

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 150,
          ),
          Lottie.asset("lib/assets/Welcome.json",
              width: 300, height: 100, fit: BoxFit.contain),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Enter Your Details Here ",
                style: GoogleFonts.poppins(
                    fontSize: 31,
                    color: const Color.fromARGB(255, 70, 67, 67),
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  onChanged: (value) {
                    setState(() {
                      collegeName = value;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter your full name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      department = value;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'College Name',
                    hintText: 'Enter Your College Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      code = value;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Department',
                    hintText: 'Enter Your Department/course',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (allDetailsFilled == 1) {
                      Navigator.of(context).pushReplacementNamed('/Home');
                      user.Name = collegeName;
                      user.Department = code;
                      user.collegeName = department;
                    }
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
