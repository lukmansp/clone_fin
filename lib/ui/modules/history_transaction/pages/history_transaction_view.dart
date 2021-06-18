import 'package:examp_pinApp/ui/modules/history_transaction/constans/constanta_history.dart';
import 'package:flutter/material.dart';

class HistoryTransactionView extends StatefulWidget {
  @override
  _HistoryTransactionViewState createState() => _HistoryTransactionViewState();
}

class _HistoryTransactionViewState extends State<HistoryTransactionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black87),
        title: Text(
          ConstantaHistory.historyTransaction,
          style: TextStyle(color: Colors.black87, fontSize: 14, fontWeight: FontWeight.normal),
        ),
      ),
      body: Container(margin: EdgeInsets.only(top: 40), child: _buildListTileHistory()),
    );
  }

  Widget _buildListTileHistory() {
    return ListTile(
      title: Text(ConstantaHistory.historyTransaction),
      trailing: PopupMenuButton(
        child: Container(
          height: 40,
          width: 110,
          padding: EdgeInsets.only(left: 5),
          decoration: ShapeDecoration(
              color: Colors.black12,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Text(ConstantaHistory.staticPayment), Icon(Icons.arrow_drop_down)],
          ),
        ),
        itemBuilder: (context) {
          return [
            PopupMenuItem(
              value: ConstantaHistory.staticPayment,
              child: Text(ConstantaHistory.staticPayment),
            ),
            PopupMenuItem(
              value: ConstantaHistory.staticWithdrawal,
              child: Text(ConstantaHistory.staticWithdrawal),
            )
          ];
        },
        onSelected: (String value) {
          print('You Click on po up menu item');
        },
      ),
    );
  }
}
