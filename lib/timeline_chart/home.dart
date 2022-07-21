import 'package:chart_play_ground/timeline_chart/subscriber_chart.dart';
import 'package:flutter/material.dart';

import '../timeline_chart/subscriber_series.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<SubscriberSeries> data = [
    SubscriberSeries(DateTime(2021, 9, 19), 5),
    SubscriberSeries(DateTime(2021, 9, 20), 25),
    SubscriberSeries(DateTime(2021, 9, 27), 100),
    SubscriberSeries(DateTime(2022, 9, 19), 75),
    SubscriberSeries(DateTime(2022, 3, 19), 5),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SubscriberChart(data: data)),
    );
  }
}
