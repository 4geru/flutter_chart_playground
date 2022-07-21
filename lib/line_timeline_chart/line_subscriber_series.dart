/// Sample linear data type.
import 'package:charts_flutter/flutter.dart' as charts;

class LineSubscriberSeries {
  final int key;
  final int value;
  final charts.Color color;

  LineSubscriberSeries(
      {required this.key, required this.value, required this.color});
}
