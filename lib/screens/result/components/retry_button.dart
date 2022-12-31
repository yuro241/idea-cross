import 'package:flutter/material.dart';

class RetryButton extends StatelessWidget {
  final Function() onPressed;
  const RetryButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 360,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ElevatedButton(
          onPressed: () {
            onPressed();
          },
          child: Text(
            'もう一度',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFF9DC5F),
            foregroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
