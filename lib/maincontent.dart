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
      body: Container(
        //decoration: BoxDecoration(color: Colors.red),
        child: SfRadialGauge(
          axes: [
            RadialAxis(
                radiusFactor: 0.6,
                showAxisLine: true,
                minimum: 0,
                maximum: 14,
                ranges: [
                  GaugeRange(startValue: 0, endValue: 3, color: Colors.red),
                  GaugeRange(startValue: 3, endValue: 6, color: Colors.orange),
                  GaugeRange(startValue: 6, endValue: 14, color: Colors.green),
                ],
                pointers: <GaugePointer>[
                  NeedlePointer(value: 2.5)
                ],
                annotations: <GaugeAnnotation>[
                  GaugeAnnotation(
                      widget: Container(
                          child: Text('Hours Slept',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold))),
                      angle: 90,
                      positionFactor: 0.5)
                ])
          ],
        ),
      ),
    ));
  }
}
