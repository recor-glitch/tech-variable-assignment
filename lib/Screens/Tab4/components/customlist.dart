import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:techdemo/Components/transaction_card.dart';
import 'package:techdemo/Models/transactionmodel.dart';

class CustomList extends StatelessWidget {
  const CustomList({Key? key, required this.data}) : super(key: key);
  final List<TransactionModel> data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: data.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
      return TransactionCard(
          title: data[index].title,
          date: data[index].date,
          amt: data[index].amt);
    });
  }
}
