/// Sample linear data type.
import 'package:charts_flutter/flutter.dart' as charts;

class TimelineSubscriberSeries {
  final DateTime date;
  final int value;
  final charts.Color color;

  TimelineSubscriberSeries(
      {required this.date, required this.value, required this.color});
}
