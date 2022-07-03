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
        domainFn: (SubscriberSeries series, _) => series.year,
        measureFn: (SubscriberSeries series, _) => series.subscribers,
        colorFn: (SubscriberSeries series, _) => series.barColor,
      )
    ];
    return Container(
        height: 400,
        padding: EdgeInsets.all(20),
        child: Card(
            child: Column(
          children: [
            Text(
              "hello this is world",
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Expanded(
                child: charts.BarChart(
              series,
              animate: false,
            ))
          ],
        )));
    // return charts.BarChart();
  }
}
