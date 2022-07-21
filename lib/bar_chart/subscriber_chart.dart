import 'package:chart_play_ground/bar_chart/subscriber_series.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class SubscriberChart extends StatelessWidget {
  final List<SubscriberSeries> data;
  const SubscriberChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<SubscriberSeries, String>> series = [
      charts.Series(
        id: 'Subscribers',
        data: data,
        domainFn: (SubscriberSeries series, _) => series.year.toString(),
        measureFn: (SubscriberSeries series, _) => series.subscribers,
        colorFn: (SubscriberSeries series, _) => series.barColor,
      ),
    ];
    return Column(
      children: [
        Text("棒グラフ / 円グラフ"),
        Expanded(
            child: charts.BarChart(
          series,
          vertical: true,
        )),
        Expanded(
            child: charts.BarChart(
          series,
          vertical: false,
        )),
        Expanded(child: charts.PieChart(series)),
      ],
    );
  }
}
