import 'package:chart_play_ground/line_timeline_chart/line_subscriber_series.dart';
import 'package:chart_play_ground/line_timeline_chart/subsciber_chart.dart';
import 'package:chart_play_ground/line_timeline_chart/timeline_subscriber_sesries.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<LineSubscriberSeries> lineData = [
    LineSubscriberSeries(
        key: 2, value: 5, color: charts.MaterialPalette.blue.shadeDefault),
    LineSubscriberSeries(
        key: 3, value: 25, color: charts.MaterialPalette.blue.shadeDefault),
    LineSubscriberSeries(
        key: 5, value: 100, color: charts.MaterialPalette.blue.shadeDefault),
    LineSubscriberSeries(
        key: 7, value: 125, color: charts.MaterialPalette.blue.shadeDefault),
    LineSubscriberSeries(
        key: 11, value: 200, color: charts.MaterialPalette.blue.shadeDefault),
  ];
  final List<TimelineSubscriberSeries> timelineData = [
    TimelineSubscriberSeries(
        date: DateTime(2021, 9, 19),
        value: 5,
        color: charts.MaterialPalette.blue.shadeDefault),
    TimelineSubscriberSeries(
        date: DateTime(2021, 9, 20),
        value: 25,
        color: charts.MaterialPalette.blue.shadeDefault),
    TimelineSubscriberSeries(
        date: DateTime(2021, 9, 27),
        value: 100,
        color: charts.MaterialPalette.blue.shadeDefault),
    TimelineSubscriberSeries(
        date: DateTime(2022, 3, 19),
        value: 125,
        color: charts.MaterialPalette.blue.shadeDefault),
    TimelineSubscriberSeries(
        date: DateTime(2022, 9, 19),
        value: 200,
        color: charts.MaterialPalette.blue.shadeDefault),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child:
              SubscriberChart(lineData: lineData, timelineData: timelineData)),
    );
  }
}
