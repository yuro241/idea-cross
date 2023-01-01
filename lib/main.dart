import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ideacross/screens/home/home_screen.dart';
import 'package:ideacross/screens/result/result_screen.dart';
import 'package:ideacross/screens/word_book/word_book.dart';

void main() => runApp(ProviderScope(child: AppBase()));

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
