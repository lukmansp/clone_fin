import 'package:examp_pinApp/ui/shared/constants.dart';
import 'package:flutter/material.dart';

import 'modules/credit_card/pages/credit_card_view.dart';
import 'modules/profil/pages/profil_view.dart';
import 'modules/reward/pages/reward_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<Widget> _widgetOptions = <Widget>[
    CreditCard(),
    RewardView(),
    ProfilView(),
  ];
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    logicTriangle();
    logicFibonaci();
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          ConstantText.labelTitleHome,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card_outlined), label: ConstantText.labelHomeCard),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard_outlined), label: ConstantText.labelHomeReward),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: ConstantText.labelHomeProfil),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void logicTriangle() {
    for (int i = 1; i <= 5; i++) {
      print('*' * i);
    }
  }
  void logicFibonaci(){
    int begin =0;
    int end =1;
    int count =20;
    for(int i =0;i <= count; i ++){
      print('$begin');
      int sum = begin + end;
      begin = end;
      end = sum;
    }
  }
}
