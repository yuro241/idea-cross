import 'package:flutter/material.dart';
import 'package:myapp/screens/result/components/result_list_item.dart';

class ResultList extends StatelessWidget {
  final String concept;
  final List<String> wordList;
  final List<ResultListItem> resultListItems = [];

  ResultList({
    Key? key,
    required this.concept,
    required this.wordList,
  }) {
    wordList.forEach((word) {
      resultListItems.add(ResultListItem(
        concept: concept,
        crossingWord: word,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.34,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        border: Border.all(
          color: Color(0xFFBABABA),
        ),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 28),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 7,
            physics: ClampingScrollPhysics(),
            crossAxisSpacing: 20,
            children: resultListItems,
          ),
        ),
      ),
    );
  }
}
