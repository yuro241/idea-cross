import 'package:flutter/material.dart';
import 'package:myapp/model/wordListModel.dart';
import 'package:myapp/repository/word_repository.dart';
import 'package:myapp/screens/home/home_screen.dart';
import 'package:myapp/screens/result/result_screen.dart';
import 'package:myapp/screens/word_book/word_book.dart';
import 'package:provider/provider.dart';

void main() => runApp(AppBase());

class AppBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Noto Sans JP'),
        routes: {
          '/': (context) => HomeScreen(),
          '/result': (context) => ResultScreen(),
          '/wordList': (context) => WordBookScreen(),
        },
      ),
      providers: [
        ChangeNotifierProvider(
          create: (_) => WordListModel(
            WordRepository(),
          ),
        ),
      ],
    );
  }
}
