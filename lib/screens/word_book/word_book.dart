import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/model/wordListModel.dart';
import 'package:myapp/screens/word_book/components/word_list.dart';
import 'package:provider/provider.dart';

class WordBookScreen extends StatefulWidget {
  @override
  WordBookScreenState createState() => WordBookScreenState();
}

class WordBookScreenState extends State<WordBookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFDF8),
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
          SizedBox(
            height: 52,
          ),
          Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Text(
                '単語一覧',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: WordList(
                wordList: context.watch<WordListModel>().allWordList,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
          ),
        ],
      ),
    );
  }
}
