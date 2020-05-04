import 'dart:convert';
import 'package:http/http.dart' as http;

const apiKey = "1D333E62-65BF-438D-A923-B1F6CC553F12";
const apiUrl = "https://rest.coinapi.io/v1/exchangerate";

class FetchData {
  FetchData({this.coin, this.currency});
  final currency;
  final coin;

  Future getData() async {
    http.Response response =
        await http.get("$apiUrl/BTC/$currency?apikey=$apiKey");
    String data = response.body;

    return jsonDecode(data);
  }
}
