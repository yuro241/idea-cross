import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/model/wordListModel.dart';
import 'package:myapp/repository/word_repository.dart';
import 'package:myapp/screens/result/components/result_list.dart';
import 'package:myapp/screens/result/components/retry_button.dart';
import 'package:provider/provider.dart';

class ResultScreenArguments {
  final String concept;

  ResultScreenArguments(this.concept);
}

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as ResultScreenArguments;

    return ChangeNotifierProvider(
      create: (context) => WordListModel(
        WordRepository(),
      ),
      child: Scaffold(
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
                wordList: context.watch<WordListModel>().wordList,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RetryButton(onPressed: () {
              context.read<WordListModel>().setWordList();
            }),
          ],
        ),
      ),
    );
  }
}
