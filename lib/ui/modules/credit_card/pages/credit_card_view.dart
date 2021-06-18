import 'package:examp_pinApp/ui/modules/credit_card/constants/constanta_credit_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatefulWidget {
  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
         _buildPaymentInfo(),
          SizedBox(
            height: 50,
          ),
          _buildCreditCard()
        ],
      ),
    );
  }

  Widget _buildCreditCard(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(child: Text(ConstantaCreditCard.yourCreditCard,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
        RaisedButton(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color:Colors.blueAccent)
          ),
            child: Text(ConstantaCreditCard.addCreditCard),
            onPressed: (){}
        )
      ],
    );
  }

  Widget _buildPaymentInfo(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildSubPaymentInfo(title: ConstantaCreditCard.amountCard,info: '0'),
        _buildSubPaymentInfo(title: ConstantaCreditCard.totalPayment,info: ConstantaCreditCard.comingSoon),
        _buildSubPaymentInfo(title: ConstantaCreditCard.reminderNotice,info: ConstantaCreditCard.comingSoon)
      ],
    );
  }

  Widget _buildSubPaymentInfo({String title, String info}) {
    return Column(
      children: [Text(title,style: TextStyle(fontSize: 12),), Container(
          margin:EdgeInsets.only(top: 20) ,child: Text(info,style: TextStyle(fontSize: 12),))],
    );
  }
}
