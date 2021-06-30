import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: -(MediaQuery.of(context).size.width / 2.8),
          top: -(MediaQuery.of(context).size.width / 2.8),
          child: Image.asset(
            'images/background.png',
            width: MediaQuery.of(context).size.width / 1.4,
            height: MediaQuery.of(context).size.width / 1.4,
          ),
        ),
        Positioned(
          left: -(MediaQuery.of(context).size.width / 5.1),
          bottom: -(MediaQuery.of(context).size.width / 3.7),
          child: Image.asset(
            'images/background.png',
            width: MediaQuery.of(context).size.width / 1.4,
            height: MediaQuery.of(context).size.width / 1.4,
          ),
        ),
      ],
    );
  }
}
