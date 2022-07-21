// import 'package:chart_play_ground/line_chart/subscriber_chart.dart';
import 'package:flutter/material.dart';

import 'sample_chart_series.dart';

// import '../home_chart/subscriber_series.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<SampleSeries> data = [
    SampleSeries(0, 5),
    SampleSeries(1, 25),
    SampleSeries(2, 100),
    SampleSeries(3, 75),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            padding: EdgeInsets.only(top: 100),
            child: Expanded(
              child: ListView(
                children: [
                  Card(
                    child: Container(
                        height: 300,
                        width: 300,
                        padding: EdgeInsets.all(20),
                        child: Text("hgell")),
                  ),
                  Card(
                    child: Container(
                        height: 300,
                        width: 300,
                        padding: EdgeInsets.all(20),
                        child: Text("hgell")),
                  ),
                  Card(
                    child: Container(
                        height: 300,
                        width: 300,
                        padding: EdgeInsets.all(20),
                        child: Text("hgell")),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
