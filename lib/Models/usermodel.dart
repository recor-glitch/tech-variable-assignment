import 'package:azlistview/azlistview.dart';
import 'package:flutter/material.dart';

class UserModel extends ISuspensionBean {
  UserModel(
      {required this.colour, required this.fullname, required this.bankname, required this.tag});
  final List<Color> colour;
  final String fullname, bankname;
  final tag;

  @override
  String getSuspensionTag() => tag;
}
