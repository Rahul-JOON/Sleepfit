// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool ison = true;

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          decoration: BoxDecoration(color: Colors.transparent),
          child: CupertinoFormSection(
            header: Text(
              "Settings",
              style: TextStyle(fontSize: 25),
            ),
            children: [
              CupertinoFormRow(
                child: CupertinoSwitch(
                    value: ison,
                    onChanged: (value) {
                      setState(() {
                        ison = !ison;
                      });
                    }),
                prefix: Text('Alarms'),
              )
            ],
          ),
        )
      ]),
    ));
  }
}
