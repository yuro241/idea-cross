import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Flexible(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Text(
                    '掛け合わせでアイデア出し',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Text(
                    'コンセプトを入力すると、それに合った単語を掛け合わせます。アイデア出しをもっと楽しく、おもしろく！',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 16,
                  ),
                  child: Text(
                    'アイデアを入力',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'アイデアを入力',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/result');
                    },
                    child: Text('Idea Cross!'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextButton(
                    onPressed: () {
                      print('on pressed 単語一覧を見る button');
                    },
                    child: Text('単語一覧を見る'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
