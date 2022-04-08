import 'package:flutter/material.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'dart:developer' as developer;
import 'dart:async';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Center(
              child: Text('Medical Recliner Chair'),
            ),
          ),
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 90,
                backgroundImage: AssetImage('image/logo.png'),
              ),
              const Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.black, size: 20),
                  title: Text(
                    'Sign in with Google',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Source Sans Pro-Italic.ttf'),
                  ),
                  trailing: Icon(Icons.phone),
                ),
              ),
              TextButton(
                onPressed: () {
                  getConnection();
                  // Respond to button press
                },
                child: Text("TEXT BUTTON"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

getConnection() async {
  final info = NetworkInfo();

  var wifiBSSID = await info.getWifiBSSID(); // 11:22:33:44:55:66
  var wifiIP = await info.getWifiIP(); // 192.168.1.1
  var wifiName = await info.getWifiName(); // FooNetwork

  print(
      '------------------------------------------------------------------------------------------------------');

  print(
      '------------------------------------------------------------------------------------------------------');
  print(wifiBSSID);
  print(wifiIP);
  print(wifiName);

  print(
      '------------------------------------------------------------------------------------------------------');

  print(
      '------------------------------------------------------------------------------------------------------');
}
