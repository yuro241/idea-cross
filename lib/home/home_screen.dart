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
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        title: Container(
          child: Text(
            'IDEA × CROSS',
            style: TextStyle(
              color: Color(0xFF112D49),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              '掛け合わせでアイデア出し',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF11254A),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'コンセプトを入力すると、それに合った単語を掛け合わせます。アイデア出しをもっと楽しく、おもしろく！',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Color(0xFF11254A),
              ),
            ),
          ),
          SizedBox(
            height: 56,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'アイデアを入力',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF11254A),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'アイデアを入力',
                ),
              ),
            ),
            height: 42,
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/result');
                },
                child: Text(
                  'IDEA CROSS!',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFF9DC5F),
                  onPrimary: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/wordList');
              },
              child: Text(
                '単語一覧を見る',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF747474),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
