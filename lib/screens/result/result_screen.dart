import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ideacross/model/wordListModel.dart';
import 'package:ideacross/screens/result/components/result_list.dart';
import 'package:ideacross/screens/result/components/retry_button.dart';
import 'package:ideacross/util/background.dart';

class ResultScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resultWordList = ref.watch(resultWordListProvider);

    return resultWordList.when(
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => Text('単語の取得に失敗しました。'),
      data: (result) {
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
                    SizedBox(height: 20),
                    Center(
                      child: ResultList(
                        concept: ref.watch(conceptProvider).concept,
                        wordList: result,
                      ),
                    ),
                    SizedBox(height: 40),
                    RetryButton(
                      onPressed: () => ref.refresh(resultWordListProvider),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
