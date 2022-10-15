import 'package:currency/models/currency_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget currency_box(Currency data){
  return Container(
    margin: EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 4),
    padding: EdgeInsets.all(16),
    height: 130,
    width: 400,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              blurRadius: 3
          )
        ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 20,
                  width: 30,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/${data.code}.png'),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                SizedBox(width: 8,),
                Text(data.code,style: TextStyle(fontSize: 20),)

              ],
            ),
            Icon(Icons.notifications_none,color: Colors.grey,size: 28,)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Курс ЦБ",style: TextStyle(color: Colors.grey),),
                SizedBox(height: 4,),
                Text(data.cb_price,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Покупка",style: TextStyle(color: Colors.grey),),
                SizedBox(height: 4,),
                Text(data.nbu_buy_price,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Продажа",style: TextStyle(color: Colors.grey),),
                SizedBox(height: 4,),
                Text(data.nbu_buy_price,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)
              ],
            )
          ],
        )

      ],
    ),
  );
}