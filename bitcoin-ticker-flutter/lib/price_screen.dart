import 'package:flutter/material.dart';
import "./coin_data.dart";
import "package:flutter/cupertino.dart";
import "dart:io" show Platform;
import "./fetchData.dart";

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String result;
  String coin;
  String selectCurrency = "USD";

  DropdownButton<String> AndroidPicker() {
    List<DropdownMenuItem<String>> dropDownItems = [];
//    for (int i = 0; i < currenciesList.length; i++) {
//      String currency = currenciesList[i];
    for (String currency in currenciesList) {
      var newItems = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropDownItems.add(newItems);
    }
    return DropdownButton<String>(
      onChanged: (value) {
        setState(() {
          selectCurrency = value;
          getData(value);
        });
      },
      value: selectCurrency,
      items: dropDownItems,
    );
  }

  CupertinoPicker IOSPicker() {
    List<Text> pickterItems = [];
    for (String currency in currenciesList) {
      pickterItems.add(Text(currency));
    }
    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (selectdIndex) {
        print(selectdIndex);
      },
      children: pickterItems,
    );
  }

  Widget getPicker() {
    if (Platform.isIOS) {
      return IOSPicker();
    } else if (Platform.isAndroid) {
      return AndroidPicker();
    }
  }

  void getData(inputCurrency) async {
    FetchData fetchData = FetchData(currency: inputCurrency);
    var data = await fetchData.getData();
    setState(() {
      double value = data["rate"];
      result = value.toString();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getData(selectCurrency);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = ${result} $selectCurrency',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: getPicker(),
          )
        ],
      ),
    );
  }
}
