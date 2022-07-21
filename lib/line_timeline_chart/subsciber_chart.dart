import 'package:chart_play_ground/line_timeline_chart/line_subscriber_series.dart';
import 'package:chart_play_ground/line_timeline_chart/timeline_subscriber_sesries.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class SubscriberChart extends StatelessWidget {
  final List<LineSubscriberSeries> lineData;
  final List<TimelineSubscriberSeries> timelineData;
  const SubscriberChart({required this.lineData, required this.timelineData});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<LineSubscriberSeries, int>> lineSeries = [
      charts.Series(
        id: 'Subscribers',
        data: lineData,
        domainFn: (LineSubscriberSeries series, _) => series.key,
        measureFn: (LineSubscriberSeries series, _) => series.value,
        colorFn: (LineSubscriberSeries series, _) => series.color,
      ),
    ];

    List<charts.Series<TimelineSubscriberSeries, DateTime>> timelineSeries = [
      charts.Series(
        id: 'Subscribers',
        data: timelineData,
        domainFn: (TimelineSubscriberSeries series, _) => series.date,
        measureFn: (TimelineSubscriberSeries series, _) => series.value,
        colorFn: (TimelineSubscriberSeries series, _) => series.color,
      ),
    ];
    return Column(
      children: [
        Text("棒グラフ / 円グラフ"),
        Expanded(
            child: charts.LineChart(
          lineSeries,
        )),
        Expanded(
            child: charts.TimeSeriesChart(
          timelineSeries,
        )),
      ],
    );
  }
}
