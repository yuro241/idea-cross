import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFBABABA),
                  ),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      color: Color(0xFF00FF00),
                      child: Text('aaaa$index'),
                    );
                  },
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
