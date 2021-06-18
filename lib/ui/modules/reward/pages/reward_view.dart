import 'package:examp_pinApp/ui/modules/reward/pages/take_reward.dart';
import 'package:examp_pinApp/ui/shared/box_shadow_style.dart';
import 'package:examp_pinApp/ui/modules/reward/constants/list_payment.dart';
import 'package:flutter/material.dart';

class RewardView extends StatefulWidget {
  @override
  _RewardViewState createState() => _RewardViewState();
}

class _RewardViewState extends State<RewardView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        _buildRewardChangers(),
        SizedBox(
          height: 40,
        ),
        _buildListPayment(),
      ],
    ));
  }

  Widget _buildRewardChangers() {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Penukaran Reward',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Column(
          children: [
            Text(
              'Poin Kamu',
              style: TextStyle(color: Colors.blue),
            ),
            RaisedButton(
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.blueAccent)),
                child: Row(
                  children: [
                    Icon(
                      Icons.stars_outlined,
                      color: Colors.white,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          '0',
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
                onPressed: () {}),
          ],
        )
      ],
    ));
  }

  Widget _buildListPayment() {
    return Expanded(
      child: ListView.builder(
        itemCount: ListPayment.nominalPayment.length,
        itemBuilder: (context, index) {
          final item = ListPayment.nominalPayment[index];
          return FlatButton(
            padding: EdgeInsets.all(5),
            onPressed: () {
              showModalBottomSheet<dynamic>(
                isScrollControlled: true,
                  context: context,
                  builder: (context) => TakeReward(),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)));
            },
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxShadowStyle.boxDecorationCard,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        index >= 4 ? 'asset/images/ovo.jpg' : 'asset/images/gopay.png',
                        width: 50,
                      ),
                      Text(
                        'e-Money Gopay Rp.${item}',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.stars_outlined,
                        color: Colors.blue,
                      ),
                      Text(
                        item,
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
