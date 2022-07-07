import 'package:flutter/cupertino.dart';
import 'package:techdemo/Screens/Reports/Components/custombottomcontainer.dart';
import 'package:techdemo/Screens/Reports/Components/graph.dart';
import 'package:techdemo/Screens/Reports/Components/header.dart';

class Tab1 extends StatelessWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(child: Column(
        children: [
          Header(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          graph(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          ListView(
            shrinkWrap: true,
            children: [
              CustomBottomContainer(header: 'In Budget', subheader: 'Shopping', amt: '\$50.00/ \$100.00', colour: Color.fromRGBO(209, 236, 247, 1)),
              
              CustomBottomContainer(header: 'Out of Budget', subheader: 'Subcription', amt: '\$50.00/ \$100.00', colour: Color.fromRGBO(250, 226, 238, 1)),
            ],
          )
        ],
      )),
    );
  }
}
