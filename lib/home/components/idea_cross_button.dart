import 'package:flutter/material.dart';

class IdeaCrossButton extends StatelessWidget {
  final Function() onPressed;
  const IdeaCrossButton({
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
            'IDEA CROSS!',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Color(0xFFF9DC5F),
            onPrimary: Colors.white,
          ),
        ),
      ),
    );
  }
}
