import 'package:coach_with_me/global/FromWidgets.dart';
import 'package:coach_with_me/global/TextWidgets.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Check Out", style: TextWidgets().veryLargeTextStyle(spacing: 0.5, weight: FontWeight.w700, color: Colors.grey[800]),),
            Text("vel turpis nunc eget lorem dolor", style: TextWidgets().smallTextStyle(spacing: 0.5, weight: FontWeight.w400, color: Colors.grey[600]),),
            SizedBox(height: 16,),
            TextFormField(
              decoration: FormWidgets().inputTextDecoration(hint: "Card Number", icon: Icons.credit_card),
            ),


            SizedBox(height: 16,),

            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: FormWidgets().inputTextDecoration(hint: "Expiry Month", icon: Icons.date_range),
                  ),
                ),


                SizedBox(width: 16,),
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: FormWidgets().inputTextDecoration(hint: "Expiry Month", icon: Icons.date_range),
                  ),
                ),
              ],
            ),

            SizedBox(height: 16,),

            TextFormField(
              decoration: FormWidgets().inputTextDecoration(hint: "Security Code", icon: Icons.credit_card),
            ),

            SizedBox(height: 16,),

            FormWidgets().mainButton(icon: Icons.payment, onPressed: (){}, text: "PAYMENT"),

            SizedBox(height: 16,),
            Text("Vel fringilla est ullamcorper eget nulla. Quis risus sed vulputate odio ut. Mi tempus imperdiet nulla malesuada pellentesque elit eget gravida cum.", style: TextWidgets().smallTextStyle(spacing: 0.5, weight: FontWeight.w400, color: Colors.red[400]),),
          ],
        ),
      ),
    );
  }
}
