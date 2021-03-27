import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

const apiKey = '54D6A4C0-9EA6-4256-9EE7-84042942B521';
const coinAPIUrl = 'https://rest.coinapi.io/v1/exchangerate';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future getCoinData() async {
    String requestUrl = '$coinAPIUrl/BTC/USD?apikey=$apiKey';
    http.Response response = await http.get(Uri.parse(requestUrl));
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      var lastPrice = jsonResponse['rate'];
      print(lastPrice);
      return lastPrice;
    } else {
      print(response.statusCode);
      throw 'Problem with the get request';
    }
  }
}
