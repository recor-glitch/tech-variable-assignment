import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techdemo/Models/transactionmodel.dart';
import 'package:techdemo/Screens/Tab4/components/customlist.dart';
import 'package:techdemo/constants.dart';

class TransferHistoryPage extends StatefulWidget {
  TransferHistoryPage({Key? key, required this.maincontroller})
      : super(key: key);
  final TabController maincontroller;

  @override
  State<TransferHistoryPage> createState() => _TransferHistoryPageState();
}

class _TransferHistoryPageState extends State<TransferHistoryPage>
    with TickerProviderStateMixin {
  List<String> months = ['JAN', 'FEB', 'MAR', 'APR', 'MAY'];
  List<TransactionModel> transactions = [
    TransactionModel(title: 'Shopping', date: 'Tue 12.05.2021', amt: '\$29.90'),
    TransactionModel(
        title: 'Movie Ticket', date: 'Mon 11.05.2021', amt: '\$9.50'),
    TransactionModel(title: 'Amazon', date: 'Mon 11.05.2021', amt: '\$19.30'),
    TransactionModel(title: 'Udemy', date: 'Sat 09.05.2021', amt: '\$20.00'),
    TransactionModel(title: 'Book', date: 'Fri 08.05.2021', amt: '\$14.00'),
    TransactionModel(title: 'Spotify', date: 'Mon 11.03.2021', amt: '\$8.99')
  ];
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgcolor,
        body: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                    onTap: () {
                      widget.maincontroller.animateTo(0);
                    },
                    child: Icon(Icons.arrow_back, color: iconColor)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text.rich(TextSpan(
                    text: 'Transactions ',
                    style: GoogleFonts.rubik(
                        fontSize: 28,
                        color: textcolor,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: '2021',
                          style: GoogleFonts.rubik(
                              fontSize: 14,
                              color: Color.fromRGBO(133, 133, 133, 1),
                              fontWeight: FontWeight.bold))
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TabBar(
                    controller: controller,
                    indicatorColor: Colors.transparent,
                    labelStyle: GoogleFonts.rubik(fontSize: 14),
                    labelColor: textcolor,
                    tabs: [
                      Tab(text: months[0]),
                      Tab(text: months[1]),
                      Tab(text: months[2]),
                      Tab(text: months[3]),
                      Tab(text: months[4])
                    ]),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: controller, 
                  children: [
                  CustomList(data: transactions),
                  CustomList(data: transactions),
                  CustomList(data: transactions),
                  CustomList(data: transactions),
                  CustomList(data: transactions)
                ]),
              )
            ]),
      ),
    );
  }
}
