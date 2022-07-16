import 'package:chart_play_ground/line_chart/subscriber_series.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class SubscriberChart extends StatelessWidget {
  final List<SubscriberSeries> data;
  const SubscriberChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<SubscriberSeries, num>> series = [
      charts.Series(
        id: 'Sales',
        data: data,
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        domainFn: (SubscriberSeries series, _) => series.year,
        measureFn: (SubscriberSeries series, _) => series.sales,
      ),
      charts.Series(
        id: 'Sales',
        data: data,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        areaColorFn: (_, __) =>
            charts.MaterialPalette.green.shadeDefault.lighter,
        domainFn: (SubscriberSeries series, _) => series.year,
        measureFn: (SubscriberSeries series, _) => series.sales + 30,
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
                child: charts.LineChart(
              series,
              animate: false,
              defaultRenderer:
                  charts.LineRendererConfig(includeArea: true, stacked: true),
            )),
          ],
        )));
    // return charts.BarChart();
  }
}
