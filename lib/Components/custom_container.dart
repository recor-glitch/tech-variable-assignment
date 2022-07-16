import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class Custom2Container extends StatelessWidget {
  const Custom2Container(
      {Key? key,
      required this.amt,
      required this.cardno,
      required this.expireDate})
      : super(key: key);
  final String amt;
  final cardno, expireDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20))),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Current Balance',
                    style: GoogleFonts.rubik(fontSize: 14)),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Text(amt,
                    style: GoogleFonts.rubik(
                        fontSize: 28, fontWeight: FontWeight.bold))
              ]),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(spreadRadius: 1, color: Color.fromRGBO(51, 51, 51, 0.2), blurRadius: 2, offset: Offset.fromDirection(2, 5))],
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(19, 63, 219, 1),
                Color.fromRGBO(183, 9, 77, 0.3)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Text(cardno,
                style: GoogleFonts.ibmPlexMono(
                    fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromRGBO(255, 255, 255, 1))),
            Text(expireDate, style: GoogleFonts.ibmPlexMono(fontSize: 14, color: Color.fromRGBO(255, 255, 255, 1)))
          ]),
        )
      ]),
    );
  }
}
