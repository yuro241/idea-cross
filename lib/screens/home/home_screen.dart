import 'package:flutter/material.dart';
import 'package:ideacross/responsive.dart';
import 'package:ideacross/screens/home/components/about_app.dart';
import 'package:ideacross/screens/home/components/idea_cross_button.dart';
import 'package:ideacross/screens/home/components/search_text_field.dart';
import 'package:ideacross/util/background.dart';

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
          SizedBox(height: 56),
          Text(
            'あなたのコンセプトは…？',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF11254A),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          SearchTextField(controller: textFieldController),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          IdeaCrossButton(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
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
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.16),
            AboutApp(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'あなたのコンセプトは…？',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF11254A),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SearchTextField(
                    controller: textFieldController,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
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
            SizedBox(height: MediaQuery.of(context).size.height * 0.16),
          ],
        ),
        Spacer(),
      ],
    );
  }
}
