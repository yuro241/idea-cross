import 'package:flutter/material.dart';
import 'package:myapp/home/home_screen.dart';

void main() => runApp(AppBase());

class AppBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
