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
            image:
                NetworkImage('https://www.w3schools.com/w3css/img_lights.jpg'),
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
