import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.grey[300],
          body: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/profile.jpg')),
              Text(
                "LyhourChhen",
                style: TextStyle(
                  height: 2,
                  fontSize: 24,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Software Engineer base on Cambodia",
                style: TextStyle(fontSize: 17, height: 1.5),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Card(
                color: Colors.grey,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "+855965416898",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.grey,
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ListTile(
                      leading: Icon(Icons.email, color: Colors.black),
                      title: Text(
                        "chhenlyhour@gmail.com",
                        style: TextStyle(
                            fontFamily: "Ubuntu", fontWeight: FontWeight.bold),
                      )),
                ),
              )
            ],
          ))),
    );
  }
}
