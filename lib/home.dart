// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:sleepfit/maincontent.dart';
import 'package:sleepfit/settings.dart';
import 'package:sleepfit/profile.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<bool> _selectedgender = <bool>[false, true, false];
  PageController pageController = PageController(initialPage: 1);
  int pageChanged = 1;

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        backgroundColor: Color.fromARGB(255, 172, 148, 244),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 100, 59, 159),
                    borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.only(
                        top: 60,
                        left: ((MediaQuery.of(context).size.width) -
                                (3 * (MediaQuery.of(context).size.width / 4))) /
                            2,
                        right: ((MediaQuery.of(context).size.width) -
                            (3 * (MediaQuery.of(context).size.width / 4)))) /
                    2,
                alignment: Alignment.bottomCenter,
                height: 50,
                width: MediaQuery.of(context).size.width,
                //decoration: BoxDecoration(color: Colors.blue),
                child: ToggleButtons(
                    borderRadius: BorderRadius.circular(30),
                    disabledColor: Colors.white,
                    selectedColor: Colors.white,
                    // selectedBorderColor: Colors.white,
                    fillColor: Color.fromARGB(255, 200, 164, 218),
                    children: [
                      Container(
                          width: (MediaQuery.of(context).size.width) / 4,
                          //decoration: BoxDecoration(color: Colors.yellow),
                          child: Icon(Icons.person)),
                      Container(
                          width: (MediaQuery.of(context).size.width) / 4 + 20,
                          //decoration: BoxDecoration(color: Colors.red),
                          child: Icon(Icons.home)),
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
                        pageController.animateToPage(index,
                            duration: Duration(milliseconds: 250),
                            curve: Curves.bounceInOut);
                      });
                    }),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height - 100,
                child: Expanded(
                  child: PageView(
                    controller: pageController,
                    onPageChanged: (int index) {
                      setState(() {
                        pageChanged = index;
                        for (int i = 0; i < _selectedgender.length; i++) {
                          _selectedgender[i] = i == index;
                        }
                      });
                    },
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 172, 148, 244)),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height - 100,
                          child: profile()),
                      Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 172, 148, 244)),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height - 100,
                          child: Maincontent()),
                      Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 172, 148, 244)),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height - 100,
                          child: Settings()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
