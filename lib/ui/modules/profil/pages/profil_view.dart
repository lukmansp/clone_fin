import 'package:examp_pinApp/ui/modules/history_transaction/pages/history_transaction_view.dart';
import 'package:examp_pinApp/ui/modules/profil/constants/constanta_profil.dart';
import 'package:flutter/material.dart';

class ProfilView extends StatefulWidget {
  @override
  _ProfilViewState createState() => _ProfilViewState();
}

class _ProfilViewState extends State<ProfilView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 9),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) =>HistoryTransactionView(),)),
              child: _buildNameTextField(
                  icon: Icon(
                    Icons.history,
                    color: Colors.blue,
                    size: 23,
                  ),
                  title: ConstantaProfil.historyTransaction)),
          _buildNameTextField(
              icon: Icon(Icons.chat, color: Colors.blue, size: 23), title: ConstantaProfil.chatSupport),
          _buildNameTextField(
              icon: Icon(Icons.logout, color: Colors.blue, size: 23), title: ConstantaProfil.logout)
        ],
      ),
    );
  }

  Widget _buildNameTextField({Icon icon, String title}) {
    return Container(
      margin: EdgeInsets.only(top: 17),
      height: 50,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  icon,
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.body1.merge(TextStyle(
                            fontSize: 14,
                          )),
                    ),
                  ),
                ],
              ),
              Icon(Icons.navigate_next)
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            height: 1,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
