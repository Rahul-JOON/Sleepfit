// ignore_for_file: prefer_const_constructors
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sleepfit/Oneinstance/Newuser.dart';
import 'package:sleepfit/Oneinstance/Userinfo.dart';
import 'package:sleepfit/home.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  CollectionReference BUD =
      FirebaseFirestore.instance.collection('BasicUserdata');

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
