import 'package:flutter/material.dart';
import 'package:get_it_mixin/get_it_mixin.dart';
import 'package:http/http.dart' as http;
import 'package:quote_api/logic/QuoteProvider.dart';
import 'dart:convert';
import '../main.dart';
import 'package:get_it/get_it.dart';
import '../states/Quote.dart';

class MyHomePage extends StatelessWidget with GetItMixin {
  String title = "title";
  QuoteProvider provider = QuoteProvider();

  void _getNewQuote() {
    provider.getNewQuote();
  }

  @override
  Widget build(BuildContext context) {
    String quote = watchX((Quote m) => m.quote);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Text(
                quote,
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getNewQuote,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
