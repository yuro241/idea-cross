import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/repository/word_repository.dart';
import 'package:myapp/result/components/result_list.dart';
import 'package:myapp/result/components/retry_button.dart';

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
          Text(
            '結果',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Center(
            child: ResultList(
              concept: arguments.concept,
              repository: WordRepository(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RetryButton(onPressed: () {}),
        ],
      ),
    );
  }
}
