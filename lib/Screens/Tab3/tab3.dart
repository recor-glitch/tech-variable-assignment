import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techdemo/Components/customappbar.dart';
import 'package:techdemo/Components/transaction_card.dart';
import 'package:techdemo/Models/transactionmodel.dart';
import 'package:techdemo/Components/custom_container.dart';
import 'package:techdemo/constants.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  List<TransactionModel> transactions = [
    TransactionModel(title: 'Shopping', date: 'Tue 12.05.2021', amt: '\$29.90'),
    TransactionModel(
        title: 'Movie Ticket', date: 'Mon 11.05.2021', amt: '\$9.50'),
    TransactionModel(title: 'Amazon', date: 'Mon 11.05.2021', amt: '\$19.30'),
    TransactionModel(title: 'Udemy', date: 'Sat 09.05.2021', amt: '\$20.00'),
    TransactionModel(title: 'Book', date: 'Fri 08.05.2021', amt: '\$14.00'),
    TransactionModel(title: 'Spotify', date: 'Mon 11.03.2021', amt: '\$8.99')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg.png'), fit: BoxFit.fitWidth)),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                  add: false,
                  title: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good Morning',
                            style: GoogleFonts.rubik(
                                fontSize: 16, color: textcolor)),
                        Text('Tech Variable',
                            style: GoogleFonts.rubik(
                                fontSize: 24,
                                color: textcolor,
                                fontWeight: FontWeight.bold))
                      ])),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Custom2Container(
                    amt: '\$12567.89',
                    cardno: '3452 1235 7894 1678',
                    expireDate: '05/2025'),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('Last transactions',
                    style: GoogleFonts.rubik(
                        fontSize: 14, color: Color.fromRGBO(133, 133, 133, 1))),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: transactions.length,
                  itemBuilder: (BuildContext context, int index) =>
                      TransactionCard(
                          title: transactions[index].title,
                          amt: transactions[index].amt,
                          date: transactions[index].date),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
