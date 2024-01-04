// import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseRealtimeDemoScreen extends StatefulWidget {
  @override
  State<FirebaseRealtimeDemoScreen> createState() =>
      _FirebaseRealtimeDemoScreenState();
}

class _FirebaseRealtimeDemoScreenState
    extends State<FirebaseRealtimeDemoScreen> {
  final databaseReference = FirebaseDatabase.instance.ref();

  List<String> name = ["Sample name"];

  List<String> age = ["Sample age"];

  List<String> desc = ["Sample desc"];

  @override
  void initState() {
    readData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    readData();
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Realtime Database Demo'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(name[index]),
              subtitle: Text(desc[index]),
              trailing: Text(age[index]),
            );
          },
          itemCount: name.length,
        ));
  }

  void createData() {
    databaseReference
        .child("flutterDevsTeam1")
        .set({'name': 'Deepak Nishad', 'description': 'Team Lead'});
    databaseReference.child("flutterDevsTeam2").set(
        {'name': 'Yashwant Kumar', 'description': 'Senior Software Engineer'});
    databaseReference
        .child("flutterDevsTeam3")
        .set({'name': 'Akshay', 'description': 'Software Engineer'});
    databaseReference
        .child("flutterDevsTeam4")
        .set({'name': 'Aditya', 'description': 'Software Engineer'});
    databaseReference
        .child("flutterDevsTeam5")
        .set({'name': 'Shaiq', 'description': 'Associate Software Engineer'});
    databaseReference
        .child("flutterDevsTeam6")
        .set({'name': 'Mohit', 'description': 'Associate Software Engineer'});
    databaseReference
        .child("flutterDevsTeam7")
        .set({'name': 'Naveen', 'description': 'Associate Software Engineer'});
  }

  Future<void> readData() async {
    final reference = FirebaseDatabase.instance.ref("flutterDevsTeam5/names");
    for (int r = 0; r < 5; r++) {
      var childs = reference.child("/$r/name");
      DatabaseEvent event = await childs.once();
      name.add(event.snapshot.value.toString());
    }
    for (int r = 0; r < 5; r++) {
      var childs = reference.child("/$r/age");
      DatabaseEvent event = await childs.once();
      age.add(event.snapshot.value.toString());
    }
    for (int r = 0; r < 5; r++) {
      var childs = reference.child("/$r/desc");
      DatabaseEvent event = await childs.once();
      desc.add(event.snapshot.value.toString());
    }
    print(name);
    print(age);
    print(desc);
  }

  void updateData() {
    databaseReference.child('flutterDevsTeam1').update({'description': 'CEO'});
    databaseReference
        .child('flutterDevsTeam2')
        .update({'description': 'Kya Pata.....'});
    databaseReference
        .child('flutterDevsTeam3')
        .update({'description': 'Senior Software Engineer'});
  }

  void deleteData() {
    databaseReference.child('flutterDevsTeam1').remove();
    databaseReference.child('flutterDevsTeam2').remove();
    databaseReference.child('flutterDevsTeam3').remove();
  }
}
