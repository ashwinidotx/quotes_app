import 'package:flutter/material.dart';
import 'my_app.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Quotes App',
    home: Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Quotes from my Behind',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue.shade100,
      ),
      body: MyApp(),
    ),
  ));
}
