import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techdemo/constants.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget customContainer(String head, String amt, Color colour) {
      return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(head, style: GoogleFonts.rubik(fontSize: 14)),
          Row(
            children: [
              Text(amt, style: GoogleFonts.rubik(fontSize: 16, fontWeight: FontWeight.bold)),
              Icon(Icons.trending_up, color: iconColor)
            ],
          )
        ]),
      ),
    );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        customContainer('Money In', '+ \$3,456.98', Color.fromRGBO(248, 225, 146, 1)),
        customContainer('Money Out', '- \$567.25', Color.fromRGBO(182, 224, 243, 1))
      ],
    );
  }
}