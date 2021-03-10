import 'package:flutter/material.dart';

//The main function is the starting point for all our Flutter apps
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[200],
        body: Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),
        ),
        appBar: AppBar(
          title: Text('I am Rich'),
          centerTitle: true,
          backgroundColor: Colors.purple[600],
        ),
      ),
    ),
  );
}
