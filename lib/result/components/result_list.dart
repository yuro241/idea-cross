import 'package:flutter/material.dart';
import 'package:myapp/repository/word_repository.dart';
import 'package:myapp/result/components/result_list_item.dart';

class ResultList extends StatefulWidget {
  final String concept;
  final WordRepository repository;
  const ResultList({
    Key? key,
    required this.concept,
    required this.repository,
  }) : super(key: key);

  @override
  _ResultListState createState() => _ResultListState();
}

class _ResultListState extends State<ResultList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget.repository.getWordListFromCSV(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final wordList = snapshot.data as List<String>;
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
                        ResultListItem(
                          concept: widget.concept,
                          crossingWord: wordList[i],
                        ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (var i = 5; i < 10; i++)
                        ResultListItem(
                          concept: widget.concept,
                          crossingWord: wordList[i],
                        ),
                    ],
                  ),
                ],
              ),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
