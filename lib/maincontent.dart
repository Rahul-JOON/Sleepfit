// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Maincontent extends StatefulWidget {
  const Maincontent({Key? key}) : super(key: key);

  @override
  State<Maincontent> createState() => _MaincontentState();
}

class _MaincontentState extends State<Maincontent> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 25),
            height: 250,
            //decoration: BoxDecoration(color: Colors.red),
            child: SfRadialGauge(
              axes: [
                RadialAxis(
                    radiusFactor: 0.9,
                    showAxisLine: true,
                    minimum: 0,
                    maximum: 75,
                    ranges: [
                      GaugeRange(
                          startValue: 0, endValue: 25, color: Colors.red),
                      GaugeRange(
                          startValue: 25, endValue: 42, color: Colors.orange),
                      GaugeRange(
                          startValue: 42, endValue: 75, color: Colors.green),
                    ],
                    pointers: <GaugePointer>[
                      MarkerPointer(
                        enableDragging: true,
                        value: 28,
                        markerHeight: 20,
                        markerWidth: 20,
                        markerType: MarkerType.circle,
                        overlayColor: Colors.blue.withOpacity(0.12),
                        overlayRadius: 15,
                      )
                    ],
                    annotations: <GaugeAnnotation>[
                      GaugeAnnotation(
                          widget: Container(
                              child: Text('Hours Slept\nThis Week',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold))),
                          angle: 90,
                          positionFactor: 0.5)
                    ])
              ],
            ),
          ),
          Container(
            child: Text(
              'You are on a healthy sleep roll!\nKeep it up',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Text(
              'Had some good sleep?',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              textAlign: TextAlign.center,
              obscureText: false,
              decoration: InputDecoration(
                fillColor: Colors.white,
                hoverColor: Colors.blue,
                //floatingLabelBehavior: FloatingLabelBehavior.auto,
                filled: true,
                //suffixIcon: Icon(Icons.person),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintText: 'Enter the hours you slept today',
                labelStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Icon(
            Icons.add_circle,
            size: 50,
          ),
        ],
      ),
    ));
  }
}
