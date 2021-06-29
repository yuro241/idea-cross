import 'package:flutter/material.dart';
import 'package:myapp/screens/word_book/components/word_list_item.dart';

class WordList extends StatelessWidget {
  final List<String> wordList;

  const WordList({
    Key? key,
    required this.wordList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        itemBuilder: (_, index) {
          if (wordList.isEmpty) return Container();
          return WordListItem(
            word: wordList[index],
          );
        },
      ),
    );
  }
}
