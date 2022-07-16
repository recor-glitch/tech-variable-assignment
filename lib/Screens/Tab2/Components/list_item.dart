import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techdemo/constants.dart';

class ListItem extends StatelessWidget {
  ListItem(
      {Key? key,
      required this.colour,
      required this.fullname,
      required this.bankname})
      : super(key: key);
  final List<Color> colour;
  final String fullname, bankname;
  late List<String> splited;

  @override
  Widget build(BuildContext context) {
    try {
      splited = fullname.split(' ');
    } catch (e) {}
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        leading: Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.1,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: colour,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: Center(
                child: Text(
              '${splited.first.substring(0, 1)} ${splited.last.substring(0, 1)}',
              style: GoogleFonts.rubik(fontSize: 18, color: Colors.white),
            ))),
        title: Text(fullname,
            style: GoogleFonts.rubik(
                fontSize: 16, fontWeight: FontWeight.bold, color: textcolor)),
        subtitle: Text(bankname),
      ),
    );
  }
}
