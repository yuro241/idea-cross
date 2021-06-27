import 'package:flutter/material.dart';
import 'package:myapp/result/components/result_list_item.dart';

class ResultList extends StatelessWidget {
  final String concept;
  const ResultList({
    Key? key,
    required this.concept,
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
                for (var i = 1; i <= 5; i++)
                  ResultListItem(
                    concept: concept,
                    crossingWord: 'アイデア$i',
                  ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var i = 6; i <= 10; i++)
                  ResultListItem(
                    concept: concept,
                    crossingWord: 'アイデア$i',
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
