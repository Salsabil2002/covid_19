import 'package:flutter/material.dart';
import 'data_sourse.dart';
import 'home.dart';

void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        fontFamily: 'Circular',
        primaryColor: primaryBlack
        
    ),
    home: HomePage(),
  ) );
}
