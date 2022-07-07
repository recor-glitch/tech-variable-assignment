import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class graph extends StatefulWidget {
  @override
  graphState createState() => graphState();
}

class graphState extends State<graph> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<chartstate> ChartData = [
      chartstate(2010, 20),
      chartstate(2011, 18),
      chartstate(2012, 24),
      chartstate(2013, 12),
      chartstate(2014, 30)
    ];

    return Center(
        child: SfCartesianChart(
      series: <ChartSeries>[
        AreaSeries<chartstate, int>(
            dataSource: ChartData,
            xValueMapper: (chartstate data, _) => data.x,
            yValueMapper: (chartstate data, _) => data.y,
            dataLabelSettings: DataLabelSettings(isVisible: true))
      ],
      primaryXAxis: NumericAxis(edgeLabelPlacement: EdgeLabelPlacement.shift),
    ));
  }
}

class chartstate {
  final int x;
  final double y;

  chartstate(this.x, this.y);
}