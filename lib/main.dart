// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/product_list.dart';
import 'package:flutter_ecommerce/pages/product_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var item = 0;
    return MaterialApp(
      themeMode: ThemeMode.light,
      //theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(brightness: Brightness.dark),

      //initialRoute: "/feed",
      routes: {"/": (context) => ProductList()},
    );
  }
}
