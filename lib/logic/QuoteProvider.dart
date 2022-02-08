import 'dart:convert';
import '../states/Quote.dart';
import 'package:http/http.dart' as http;
import '../states/store.dart';

class QuoteProvider {
  void getNewQuote() {
    http
        .get(Uri.parse('https://api.quotable.io/random'))
        .then((value) => _apiCallback(value));
  }

  void _apiCallback(http.Response response) {
    var parsedJson = jsonDecode(response.body)['content'];
    Quote q = locator<Quote>();
    q.quote.value = parsedJson;
  }
}
