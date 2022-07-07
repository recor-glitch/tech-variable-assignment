import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:techdemo/Screens/Reports/Components/tab1.dart';
import 'package:techdemo/Screens/Reports/Components/customappbar.dart';
import 'package:techdemo/Screens/Reports/Components/custombottom.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> with TickerProviderStateMixin{
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(229, 229, 229, 1),
        appBar: PreferredSize(preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.15), child: CustomAppBar()),
        bottomNavigationBar: CustomBottom(controller: controller),
        body: TabBarView(controller: controller,
        children: [
          Tab1(),
          Tab1(),
          Tab1(),
          Tab1()
        ],
        ),
      ),
    );
  }
}
