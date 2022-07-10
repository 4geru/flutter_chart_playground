import 'package:chart_play_ground/line_chart/subscriber_chart.dart';
import 'package:flutter/material.dart';

import '../line_chart/subscriber_series.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<SubscriberSeries> data = [
    SubscriberSeries(0, 5),
    SubscriberSeries(1, 25),
    SubscriberSeries(2, 100),
    SubscriberSeries(3, 75),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SubscriberChart(data: data)),
    );
  }
}
