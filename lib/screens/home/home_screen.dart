import 'package:flutter/material.dart';
import 'package:myapp/responsive.dart';
import 'package:myapp/screens/home/components/about_app.dart';
import 'package:myapp/screens/home/components/idea_cross_button.dart';
import 'package:myapp/screens/home/components/search_text_field.dart';
import 'package:myapp/util/background.dart';

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
      body: Stack(
        children: [
          Background(),
          Responsive.isDesktop(context)
              ? _buildHorizontalLayout()
              : _buildVerticalLayout(),
        ],
      ),
    );
  }

  Widget _buildVerticalLayout() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.16),
          AboutApp(),
          SizedBox(
            height: 56,
          ),
          Text(
            'アイデアを入力',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF11254A),
            ),
          ),
          SizedBox(height: 12),
          SearchTextField(controller: textFieldController),
          SizedBox(height: 24),
          IdeaCrossButton(),
          SizedBox(height: 12),
          Row(
            children: [
              Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/wordList');
                },
                child: Text(
                  '単語一覧を見る',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF747474),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHorizontalLayout() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AboutApp(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(height: 12),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SearchTextField(
                  controller: textFieldController,
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: IdeaCrossButton(),
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
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
