// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  final List<bool> _selectedgender = <bool>[true, false];
  int gender = 1;

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width - 70,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Icon(
                Icons.person_rounded,
                size: 150,
              ),
              Spacer(),
              CupertinoFormSection(
                  //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  children: [
                    CupertinoFormRow(
                      child: CupertinoTextFormFieldRow(
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
                        placeholder: "Enter Height",
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
                        placeholder: "Enter Weight",
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
                onPressed: (() {
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
