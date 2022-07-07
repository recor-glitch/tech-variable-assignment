import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techdemo/Screens/Reports/Components/profile_pic.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomProfile(),
          SizedBox(width: MediaQuery.of(context).size.width * 0.2),
          Text('Reports', style: GoogleFonts.rubik(fontSize: 18))
        ],
      ),
    );
  }
}
