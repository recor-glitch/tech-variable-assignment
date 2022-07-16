import 'package:flutter/material.dart';
import 'package:techdemo/Components/custom_icons.dart';
import 'package:techdemo/constants.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({Key? key, required this.controller}) : super(key: key);
  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      labelColor: selectediconcolor,
      unselectedLabelColor: iconColor,
      tabs: [
      Tab(icon: Icon(Icons.credit_card, size: 30)),
      Tab(icon: Icon(Custom_icons.message, size: 20)),
      Tab(icon: Icon(Custom_icons.chart)),
      Tab(icon: Icon(Icons.more_horiz_rounded, size: 30))
    ]);
  }
}
