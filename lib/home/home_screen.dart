import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/home/components/about_app.dart';
import 'package:myapp/home/components/idea_cross_button.dart';
import 'package:myapp/home/components/search_text_field.dart';
import 'package:myapp/result/result_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final textFieldController = TextEditingController();

  @override
  void dispose() {
    textFieldController.dispose();
    super.dispose();
  }

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
      body: Row(
        children: [
          AboutApp(),
          SizedBox(
            height: 56,
          ),
          Column(
            children: [
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SearchTextField(controller: textFieldController),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: IdeaCrossButton(onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/result',
                    arguments: ResultScreenArguments(textFieldController.text),
                  );
                }),
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
