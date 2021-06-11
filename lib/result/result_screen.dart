import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultScreen extends StatefulWidget {
  @override
  ResultScreenState createState() => ResultScreenState();
}

class ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '結果',
          style: Theme.of(context).textTheme.headline3,
        )
      ],
    );
  }
}
