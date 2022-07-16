import 'package:flutter/material.dart';
import 'package:techdemo/Screens/Tab1/tab1.dart';
import 'package:techdemo/Components/custombottom.dart';
import 'package:techdemo/Screens/Tab2/tab2.dart';
import 'package:techdemo/Screens/Tab3/tab3.dart';
import 'package:techdemo/Screens/Tab4/tab4.dart';
import 'package:techdemo/constants.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> with TickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      bottomNavigationBar: CustomBottom(controller: controller),
      body: TabBarView(
        controller: controller,
        children: [
          Home(),
          MessageTab(),
          Transfers(),
          TransferHistoryPage(maincontroller: controller)
        ],
      ),
    );
  }
}
