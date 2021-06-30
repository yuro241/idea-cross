import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/model/wordListModel.dart';
import 'package:myapp/screens/word_book/components/word_list.dart';
import 'package:myapp/util/background.dart';
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
      body: Stack(
        children: [
          Background(),
          Column(
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
        ],
      ),
    );
  }
}
