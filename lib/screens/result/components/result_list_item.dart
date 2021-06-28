import 'package:flutter/material.dart';

class ResultListItem extends StatelessWidget {
  final String concept;
  final String crossingWord;
  const ResultListItem({
    Key? key,
    required this.concept,
    required this.crossingWord,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$concept × ',
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFF11254A),
          ),
        ),
        Text(
          crossingWord,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF11254A),
          ),
        )
      ],
    );
  }
}
