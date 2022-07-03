import 'package:chart_play_ground/bar_chart/subscriber_chart.dart';
import 'package:chart_play_ground/bar_chart/subscriber_series.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<SubscriberSeries> data = [
    SubscriberSeries(
        year: '2008',
        subscribers: 100000,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    SubscriberSeries(
        year: '2009',
        subscribers: 110000,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    SubscriberSeries(
        year: '2012',
        subscribers: 160000,
        barColor: charts.ColorUtil.fromDartColor(Colors.red)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SubscriberChart(data: data)),
    );
  }
}
