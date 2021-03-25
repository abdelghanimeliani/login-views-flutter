import 'package:flutter/material.dart';
import 'package:sign_in_up_views/second%20one/HomePage2.dart';

import 'first one/home_page_one.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage2(),
    );
  }

}
