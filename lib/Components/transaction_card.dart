import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techdemo/constants.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard(
      {Key? key,
      required this.title,
      required this.date,
      required this.amt})
      : super(key: key);
  final String title, date, amt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromRGBO(255, 255, 255, 1)),
        child: ListTile(
          title: Text(title, style: GoogleFonts.rubik(fontSize: 16, color: textcolor)),
          subtitle: Text(date, style: GoogleFonts.rubik(fontSize: 14, color: Color.fromRGBO(133, 133, 133, 1))),
          trailing: Text(amt, style: GoogleFonts.rubik(fontSize: 16, fontWeight: FontWeight.bold))
        ),
      ),
    );
  }
}
