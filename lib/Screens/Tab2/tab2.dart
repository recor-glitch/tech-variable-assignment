import 'package:azlistview/azlistview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techdemo/Components/business_card.dart';
import 'package:techdemo/Components/customappbar.dart';
import 'package:techdemo/Screens/Tab2/Components/list_item.dart';
import 'package:techdemo/Models/usermodel.dart';
import 'package:techdemo/constants.dart';

class MessageTab extends StatelessWidget {
  MessageTab({Key? key}) : super(key: key);
  List<UserModel> model = [
    UserModel(
        tag: 'E',
        colour: [
          Color.fromRGBO(251, 194, 235, 1),
          Color.fromRGBO(166, 193, 238, 1)
        ],
        fullname: 'Evelyn Smith',
        bankname: 'AW BANK UNI 234-46589-000'),
    UserModel(
        tag: 'E',
        colour: [
          Color.fromRGBO(244, 201, 109, 1),
          Color.fromRGBO(154, 214, 233, 1)
        ],
        fullname: 'Emily Atkinson',
        bankname: 'AW BANK UNI 234-46589-000'),
    UserModel(
        tag: 'O',
        colour: [
          Color.fromRGBO(224, 195, 252, 1),
          Color.fromRGBO(142, 197, 252, 1)
        ],
        fullname: 'Oliver Wilson',
        bankname: 'AW BANK UNI 234-46589-000'),
    UserModel(
        tag: 'S',
        colour: [
          Color.fromRGBO(235, 187, 167, 1),
          Color.fromRGBO(207, 199, 248, 1)
        ],
        fullname: 'Sophie Baker',
        bankname: 'AW BANK UNI 234-46589-000'),
    UserModel(
        tag: 'R',
        colour: [
          Color.fromRGBO(251, 194, 235, 1),
          Color.fromRGBO(166, 193, 238, 1)
        ],
        fullname: 'Rishi Sarmah',
        bankname: 'AW BANK UNI 234-46589-000'),
    UserModel(
        tag: 'P',
        colour: [
          Color.fromRGBO(244, 201, 109, 1),
          Color.fromRGBO(154, 214, 233, 1)
        ],
        fullname: 'Pratikshya D',
        bankname: 'AW BANK UNI 234-46589-000'),
        UserModel(
        tag: 'I',
        colour: [
          Color.fromRGBO(224, 195, 252, 1),
          Color.fromRGBO(142, 197, 252, 1)
        ],
        fullname: 'Iron Man',
        bankname: 'AW BANK UNI 234-46589-000'),
  ];

  List<String> businesslist = [
    'https://www.pngrepo.com/png/354170/60/paypal.png',
    'https://www.pngrepo.com/png/354401/60/stripe.png',
    'https://www.pngrepo.com/png/330565/60/googlepay.png',
    'https://www.pngrepo.com/png/306454/60/n26.png'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgcolor,
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * 0.15),
            child: CustomAppBar(
                add: true,
                title: Text('Transfers',
                    style: GoogleFonts.rubik(
                        fontSize: 18, fontWeight: FontWeight.bold)))),
        body: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView.builder(
                    itemCount: businesslist.length,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return BusinessCard(url: businesslist[index]);
                    })),
          ),
          Expanded(
            child: AzListView(
              indexBarOptions: const IndexBarOptions(
                needRebuild: true,
                indexHintAlignment: Alignment.centerRight
              ),
              indexHintBuilder: (context, hint) => Container(
                height: 50,
                width: 50,
                child: Center(
                    child: Text(hint, style: GoogleFonts.inter(fontSize: 12))),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(234, 179, 220, 1)),
              ),
              data: model,
              physics: BouncingScrollPhysics(),
              itemCount: model.length,
              itemBuilder: (BuildContext context, int index) {
                return ListItem(
                    colour: model[index].colour,
                    fullname: model[index].fullname,
                    bankname: model[index].bankname);
              },
            ),
          )
        ]),
      ),
    );
  }
}
