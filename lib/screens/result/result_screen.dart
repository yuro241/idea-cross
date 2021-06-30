import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/model/wordListModel.dart';
import 'package:myapp/screens/result/components/result_list.dart';
import 'package:myapp/screens/result/components/retry_button.dart';
import 'package:myapp/util/background.dart';
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

    return Container(
      child: Scaffold(
        body: Stack(
          children: [
            Background(),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Text(
                  '結果',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: ResultList(
                    concept: arguments.concept,
                    wordList: context.watch<WordListModel>().resultWordList,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                RetryButton(onPressed: () {
                  context.read<WordListModel>().setResultWordList();
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
