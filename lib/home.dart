// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:sleepfit/maincontent.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<bool> _selectedgender = <bool>[true, false, false];

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        body: Column(
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          height: 100,
          width: MediaQuery.of(context).size.width,
          //decoration: BoxDecoration(color: Colors.blue),
          child: ToggleButtons(
              children: [
                Container(
                    width: (MediaQuery.of(context).size.width) / 4,
                    //decoration: BoxDecoration(color: Colors.yellow),
                    child: Icon(Icons.home)),
                Container(
                    width: (MediaQuery.of(context).size.width) / 4,
                    //decoration: BoxDecoration(color: Colors.red),
                    child: Icon(Icons.person)),
                Container(
                    width: (MediaQuery.of(context).size.width) / 4,
                    //decoration: BoxDecoration(color: Colors.orange),
                    child: Icon(Icons.settings))
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
        Container(
            decoration: BoxDecoration(color: Colors.yellow),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 100,
            child: Maincontent()),
      ],
    )));
  }
}
