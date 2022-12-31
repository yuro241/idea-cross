import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/model/wordListModel.dart';
import 'package:myapp/screens/word_book/components/word_list.dart';
import 'package:myapp/util/background.dart';

class WordBookScreen extends ConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allWordList = ref.watch(allWordListProvider);

    return allWordList.when(
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => Text('単語一覧の取得に失敗しました。'),
      data: (result) {
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
                        wordList: result,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height / 5,
                  ),
                ],
              ),
            ],
          ),
        );
      }
    );
  }
}

