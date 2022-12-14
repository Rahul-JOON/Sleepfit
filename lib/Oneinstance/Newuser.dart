// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class NUlandingpage extends StatefulWidget {
  const NUlandingpage({Key? key}) : super(key: key);

  @override
  State<NUlandingpage> createState() => _NUlandingpageState();
}

class _NUlandingpageState extends State<NUlandingpage> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Color.fromARGB(255, 121, 86, 149),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            //decoration: BoxDecoration(color: Colors.red),
            padding: EdgeInsets.only(top: 300, left: 20),
            child: Text(
              "Hi\nI'm your personal\nSleep Companion",
              style: TextStyle(fontSize: 35, color: Colors.white),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            //decoration: BoxDecoration(color: Colors.yellow),
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Text(
              "In order to provide tailored sleep advice\nI need to get some basic information. And I'll\nkeep this a secret.",
              style: TextStyle(color: Colors.grey.shade400, fontSize: 18),
            ),
          ),
          SizedBox(
            height: 250,
          ),
          ElevatedButton(
            onPressed: (() {
              Navigator.pushNamed(context, 'userinfo');
            }),
            child: Text(
              "Let's GO",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
            ),
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 200, 164, 212),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60)),
                minimumSize: Size(250, 50)),
          ),
        ],
      ),
    ));
  }
}
