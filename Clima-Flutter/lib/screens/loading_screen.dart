import 'package:flutter/material.dart';
import "package:clima/services/location.dart";
import 'package:flutter_spinkit/flutter_spinkit.dart';
import "../services/networking.dart";
import "./location_screen.dart";

const ApiKey = '8f446ad200991709c58cb2d593016eeb';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double lat;
  double lon;

  @override
  void initState() {
    getLocation();
    super.initState();
  }

  void getLocation() async {
    GetLocation location = GetLocation();
    await location.getCurrentLocation();
    lat = location.latitude;
    lon = location.longitude;

    NetworkHelper getData = NetworkHelper(
        url:
            "https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=$lon&appid=$ApiKey&units=metric");

    var weatherData = await getData.getData();
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LocationScreen(
                  locationWeather: weatherData,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitRing(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
