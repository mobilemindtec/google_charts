/// Example taken from the official website at
/// https://developers.google.com/chart/interactive/docs/gallery/piechart

import 'dart:html';
import 'package:google_charts/google_charts.dart';

void main() {
  PieChart.load().then((_) {
    var data = arrayToDataTable([
      ['Task', 'Hours per Day'],
      ['Work', 11],
      ['Eat', 2],
      ['Commute', 2],
      ['Watch TV', 2],
      ['Sleep', 7]
    ]);

    var options = {'title': 'My Daily Activities'};

    var chart = new PieChart(document.getElementById('piechart'));

    chart.draw(data, options);
  });
}
