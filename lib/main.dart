// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:sleepfit/Oneinstance/Newuser.dart';
import 'package:sleepfit/Oneinstance/Userinfo.dart';
import 'package:sleepfit/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'newuser',
    routes: {
      'newuser': (context) => NUlandingpage(),
      'userinfo': (context) => Userinfo(),
      'home': (context) => Homepage()
    },
  ));
}
