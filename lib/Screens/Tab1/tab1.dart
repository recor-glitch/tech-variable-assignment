import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techdemo/Components/customappbar.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:techdemo/Screens/MainPage/Components/custombottomcontainer.dart';
import 'package:techdemo/Screens/MainPage/Components/graph.dart';
import 'package:techdemo/Screens/MainPage/Components/header.dart';
import 'package:techdemo/constants.dart';

class Transfers extends StatelessWidget {
  Transfers({Key? key}) : super(key: key);
  var series;

  static List<charts.Series<OrdinalSales, String>> createSampleData() {
    final data = [
      OrdinalSales('JAN', 350),
      OrdinalSales('FEB', 500),
      OrdinalSales('MAR',250),
      OrdinalSales('APR', 300),
      OrdinalSales('MAY', 550),
      OrdinalSales('JUN', 300)
    ];

    return [
      charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) =>
            charts.ColorUtil.fromDartColor(Color.fromRGBO(211, 194, 236, 1)),
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    series = createSampleData();
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgcolor,
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * 0.15),
            child: CustomAppBar(add: false, title: Text('Reports',
                style:
                    GoogleFonts.rubik(fontSize: 18, fontWeight: FontWeight.bold)))),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
              child: Column(
            children: [
              Header(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(166, 193, 238, 0.3),
                        Color.fromRGBO(255, 255, 255, 1),
                        Color.fromRGBO(251, 194, 235, 0.5)
                      ],begin: Alignment.topLeft, end: Alignment.bottomRight)),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: SimpleBarChart(series, animate: false)),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  CustomBottomContainer(
                      header: 'In Budget',
                      subheader: 'Shopping',
                      amt: '\$50.00/ \$100.00',
                      colour: Color.fromRGBO(209, 236, 247, 1)),
                  CustomBottomContainer(
                      header: 'Out of Budget',
                      subheader: 'Subcription',
                      amt: '\$50.00/ \$100.00',
                      colour: Color.fromRGBO(250, 226, 238, 1)),
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}
