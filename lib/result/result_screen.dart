import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultScreenArguments {
  final String concept;

  ResultScreenArguments(this.concept);
}

class ResultScreen extends StatefulWidget {
  @override
  ResultScreenState createState() => ResultScreenState();
}

class ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as ResultScreenArguments;

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
          Flexible(
            child: Text(
              '結果',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: [
              Flexible(
                child: Column(
                  children: [
                    Container(
                      height: 20,
                      child: Text('${arguments.concept} × 1'),
                    ),
                    Container(
                      height: 20,
                      child: Text('${arguments.concept} × 2'),
                    ),
                    Container(
                      height: 20,
                      child: Text('${arguments.concept} × 3'),
                    ),
                    Container(
                      height: 20,
                      child: Text('${arguments.concept} × 4'),
                    ),
                    Container(
                      height: 20,
                      child: Text('${arguments.concept} × 5'),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  children: [
                    Container(
                      height: 20,
                      child: Text('${arguments.concept} × 6'),
                    ),
                    Container(
                      height: 20,
                      child: Text('${arguments.concept} × 7'),
                    ),
                    Container(
                      height: 20,
                      child: Text('${arguments.concept} × 8'),
                    ),
                    Container(
                      height: 20,
                      child: Text('${arguments.concept} × 9'),
                    ),
                    Container(
                      height: 20,
                      child: Text('${arguments.concept} × 10'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              child: const Text(
                'もう一度',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFF9DC5F),
                onPrimary: Colors.white,
              ),
              onPressed: () {
                print('');
              },
            ),
          ),
        ],
      ),
    );
  }
}
