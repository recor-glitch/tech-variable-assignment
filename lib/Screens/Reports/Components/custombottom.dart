import 'package:flutter/material.dart';
import 'package:techdemo/constants.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({Key? key, required this.controller}) : super(key: key);
  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      labelColor: iconColor, tabs: [
      Tab(icon: Icon(Icons.credit_card)),
      Tab(icon: Icon(Icons.sms)),
      Tab(icon: Icon(Icons.graphic_eq_rounded)),
      Tab(icon: Icon(Icons.menu))
    ]);
  }
}
