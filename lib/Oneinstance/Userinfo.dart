// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Userinfo extends StatefulWidget {
  const Userinfo({Key? key}) : super(key: key);

  @override
  State<Userinfo> createState() => _UserinfoState();
}

class _UserinfoState extends State<Userinfo> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.red),
          child: Column(
            children: [
              Text('Personal Info'),
              SizedBox(
                width: 250,
                height: 50,
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hoverColor: Colors.blue,
                    //floatingLabelBehavior: FloatingLabelBehavior.auto,
                    filled: true,
                    //suffixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: 'Name',
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                height: 50,
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hoverColor: Colors.blue,
                    //floatingLabelBehavior: FloatingLabelBehavior.auto,
                    filled: true,
                    //suffixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: 'Gender',
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                height: 50,
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hoverColor: Colors.blue,
                    //floatingLabelBehavior: FloatingLabelBehavior.auto,
                    filled: true,
                    //suffixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: 'Age',
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                height: 50,
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hoverColor: Colors.blue,
                    //floatingLabelBehavior: FloatingLabelBehavior.auto,
                    filled: true,
                    //suffixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: 'Weight',
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                height: 50,
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hoverColor: Colors.blue,
                    //floatingLabelBehavior: FloatingLabelBehavior.auto,
                    filled: true,
                    //suffixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: 'Profile',
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                height: 50,
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hoverColor: Colors.blue,
                    //floatingLabelBehavior: FloatingLabelBehavior.auto,
                    filled: true,
                    //suffixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: 'Height',
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                height: 50,
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hoverColor: Colors.blue,
                    //floatingLabelBehavior: FloatingLabelBehavior.auto,
                    filled: true,
                    //suffixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: 'Avg. Sleep',
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: (() {
                  Navigator.pushNamed(context, 'home');
                }),
                child: Text(
                  "GO",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
                ),
                style: ElevatedButton.styleFrom(
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
