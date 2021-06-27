import 'package:flutter/material.dart';
import 'package:myapp/home/home_screen.dart';
import 'package:myapp/result/result_screen.dart';
import 'package:myapp/word_book/word_book.dart';

void main() => runApp(AppBase());

class AppBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Noto Sans JP'),
      routes: {
        '/': (context) => HomeScreen(),
        '/result': (context) => ResultScreen(),
        '/wordList': (context) => WordBookScreen(),
      },
    );
  }
}
