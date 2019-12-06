import 'package:myapp/pages/home.dart';

import 'package:flutter/material.dart';

import './pages/login.dart';





void main() {

  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,

    theme: ThemeData(

      primaryColor: Colors.green.shade900

    ),

    home: Login(),

  ));

}