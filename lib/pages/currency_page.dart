import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:lottie/lottie.dart';

import '../models/currency_model.dart';

class CurrencyPage extends StatefulWidget {
  const CurrencyPage({Key? key}) : super(key: key);

  @override
  State<CurrencyPage> createState() => _CurrencyPageState();
}

class _CurrencyPageState extends State<CurrencyPage> {

  Future<List<Currency>> getData()async{
    String url="https://nbu.uz/uz/exchange-rates/json/";

    var response = await http.get(Uri.parse(url));

    if(response.statusCode==200){
      List json= jsonDecode(response.body) as List;
      List<Currency> currencies= json.map((e) => Currency.fromJson(e)).toList();
      return currencies;
    }
    return List.empty();



  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        actionsIconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [Icon(Icons.search,size: 32,),
        Text("   ")],
        title: Text("Обменные курсы",style: TextStyle(color: Colors.black),),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: ((context, snapshot) {
          if(snapshot.connectionState==ConnectionState.waiting){
            Container(
              color: Colors.white,
              child: Center(
                child: Lottie.asset('assets/animations/waiting.json'),

              ),
            );
          }
          return Container();
        })
      ),


    );
  }
}
