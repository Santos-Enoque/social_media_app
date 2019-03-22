import 'package:flutter/material.dart';
import 'package:hey/screens/home.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: ThemeData(
      primaryColor: Colors.red
    ),
  ));
}
