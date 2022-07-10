import 'package:chart_play_ground/timeline_chart/subscriber_chart.dart';
import 'package:flutter/material.dart';

import '../timeline_chart/subscriber_series.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<SubscriberSeries> data = [
    SubscriberSeries(DateTime(2017, 9, 19), 5),
    SubscriberSeries(DateTime(2017, 9, 26), 25),
    SubscriberSeries(DateTime(2017, 10, 3), 100),
    SubscriberSeries(DateTime(2017, 10, 10), 75),
    SubscriberSeries(DateTime(2018, 1, 19), 5),
    SubscriberSeries(DateTime(2018, 3, 26), 25),
    SubscriberSeries(DateTime(2018, 5, 3), 100),
    SubscriberSeries(DateTime(2018, 8, 10), 75),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SubscriberChart(data: data)),
    );
  }
}
