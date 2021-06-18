import 'package:examp_pinApp/ui/shared/box_shadow_style.dart';
import 'package:flutter/material.dart';

class TakeReward extends StatefulWidget {
  @override
  _TakeRewardState createState() => _TakeRewardState();
}

class _TakeRewardState extends State<TakeReward> {
  final TextEditingController _controller =TextEditingController(text: '012381230');
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPanelHolder(),
          _buildNumbetPhoneText(),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               _buildButton("Batal"),
                _buildButton("Tukar")
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPanelHolder() {
    return Center(
      child: Container(
        width: 30,
        height: 5,
        margin: EdgeInsets.only(bottom: 10, top: 10),
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.black26),
      ),
    );
  }

  Widget _buildNumbetPhoneText() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Container(child: Text('Tukar Reward')),
          Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Kirim Ke',
                style: TextStyle(color: Colors.black26),
              )),
          Container(
            margin: EdgeInsets.only(top: 20, left: 40),
            width: 120,
            child: Row(
              children: [
                Text('+62'),
                Container(width: 90, margin: EdgeInsets.only(left: 5), child: TextField(
                  controller: _controller,
                  style: TextStyle(color: Colors.grey),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildButton(String title){
    return  FlatButton(
        onPressed: () {},
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
            decoration: BoxShadowStyle.boxDecorationCard,
            child: Text(
              title,
            )));
  }
}
