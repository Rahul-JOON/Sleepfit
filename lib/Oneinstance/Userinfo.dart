// ignore_for_file: prefer_const_constructors
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Userinfo extends StatefulWidget {
  const Userinfo({Key? key}) : super(key: key);

  @override
  State<Userinfo> createState() => _UserinfoState();
}

class _UserinfoState extends State<Userinfo> {
  String name = '';
  String age = '';
  String height = '';
  String weight = '';
  String career = '';
  String busyhours = '';

  final List<bool> _selectedgender = <bool>[true, false];
  int gender = 1;

  CollectionReference BUD =
      FirebaseFirestore.instance.collection('BasicUserdata');

  // final BUD = FirebaseFirestore.instance.collection('BasicUserdata').withConverter<BasicUserdata>(
  //     fromFirestore: (snapshots, _) => Movie.fromJson(snapshots.data()!),
  //     toFirestore: (movie, _) => movie.toJson());

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 200, 164, 212),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width - 50,
          //decoration: BoxDecoration(color: Colors.red),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Column(
            children: [
              Container(
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 100, 59, 159)),
                child: Column(children: [
                  Text(
                    'Sign up',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'Create Your Account',
                    style: TextStyle(color: Colors.white),
                  ),
                ]),
              ),
              Spacer(),
              CupertinoFormSection(
                  //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  children: [
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        onChanged: ((value) => name = value),
                        placeholder: "Enter Name",
                      ),
                      prefix: Text('Name'),
                    ),
                  ]),
              Spacer(),
              CupertinoFormSection(
                  //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  children: [
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        onChanged: (value) => {age = value},
                        placeholder: "Enter Age",
                      ),
                      prefix: Text('Age'),
                    ),
                  ]),
              Spacer(),
              CupertinoFormSection(
                  //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  children: [
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        onChanged: (value) => {height = value},
                        placeholder: "Eg: 167(in cm)",
                      ),
                      prefix: Text('Height'),
                    ),
                  ]),
              Spacer(),
              CupertinoFormSection(
                  //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  children: [
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        onChanged: (value) => {weight = value},
                        placeholder: "Eg: 69(in kg)",
                      ),
                      prefix: Text('Weight'),
                    ),
                  ]),
              Spacer(),
              CupertinoFormSection(
                  //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  children: [
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        onChanged: (value) => {career = value},
                        placeholder: "Eg : Student",
                      ),
                      prefix: Text('Career'),
                    ),
                  ]),
              Spacer(),
              CupertinoFormSection(
                  //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  children: [
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
                        onChanged: (value) => {busyhours = value},
                        placeholder: "Eg: 9-5",
                      ),
                      prefix: Text('Busy Hours'),
                    ),
                  ]),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 100, 59, 159),
                ),
                alignment: Alignment.center,
                height: 50,
                width: MediaQuery.of(context).size.width,
                //decoration: BoxDecoration(color: Colors.blue),
                child: ToggleButtons(
                    disabledColor: Colors.white,
                    selectedColor: Colors.white,
                    // selectedBorderColor: Colors.white,
                    fillColor: Color.fromARGB(255, 200, 164, 218),
                    children: [
                      Container(
                          width: (MediaQuery.of(context).size.width) / 3 + 28,
                          //decoration: BoxDecoration(color: Colors.yellow),
                          child: Icon(Icons.male)),
                      Container(
                          width: (MediaQuery.of(context).size.width) / 3 + 29,
                          //decoration: BoxDecoration(color: Colors.red),
                          child: Icon(Icons.female)),
                    ],
                    isSelected: _selectedgender,
                    onPressed: (int index) {
                      setState(() {
                        // The button that is tapped is set to true, and the others to false.
                        for (int i = 0; i < _selectedgender.length; i++) {
                          _selectedgender[i] = i == index;
                        }
                      });
                    }),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: (() async {
                  await BUD.doc('mypage').set({
                    "name": name,
                    "age": age,
                    "height": height,
                    "weight": weight,
                    "career": career,
                    "busyhours": busyhours,
                    "gender": gender,
                  });
                  Navigator.pushNamed(context, 'home');
                }),
                child: Text(
                  "GO",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 121, 86, 149),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60)),
                    minimumSize: Size(250, 50)),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
