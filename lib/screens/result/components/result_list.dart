import 'package:flutter/material.dart';
import 'package:myapp/result/components/result_list_item.dart';

class ResultList extends StatelessWidget {
  final String concept;
  final List<String> wordList;

  const ResultList({
    Key? key,
    required this.concept,
    required this.wordList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      height: 274,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFBABABA),
        ),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var i = 0; i < 5; i++)
                  if (wordList.length > i)
                    ResultListItem(
                      concept: concept,
                      crossingWord: wordList[i],
                    ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var i = 5; i < 10; i++)
                  if (wordList.length > i)
                    ResultListItem(
                      concept: concept,
                      crossingWord: wordList[i],
                    ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
