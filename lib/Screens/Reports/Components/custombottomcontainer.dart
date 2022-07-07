import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomContainer extends StatelessWidget {
  const CustomBottomContainer(
      {Key? key,
      required this.header,
      required this.subheader,
      required this.amt,
      required this.colour})
      : super(key: key);
  final String header, subheader, amt;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10)),
        child: ListTile(
            title: Text(header,
                style: GoogleFonts.rubik(
                    fontSize: 16, fontWeight: FontWeight.bold)),
            subtitle: Text(subheader,
                style: GoogleFonts.rubik(
                    fontSize: 14, color: Color.fromRGBO(133, 133, 133, 1))),
            trailing: Text(
              amt,
              style: GoogleFonts.rubik(fontSize: 16),
            )));
  }
}
