import 'package:flutter/material.dart';
import 'package:ideacross/responsive.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            '「掛け合わせ」でアイデア出しに新しい風を',
            style: TextStyle(
              fontSize: Responsive.isDesktop(context) ? 28 : 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF11254A),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'コンセプトを入力すると、それに合った単語を掛け合わせます。\n アイデア出しをもっと楽しく、おもしろく！',
            style: TextStyle(
              fontSize: Responsive.isDesktop(context) ? 14 : 12,
              fontWeight: FontWeight.normal,
              color: Color(0xFF11254A),
            ),
          ),
        ),
      ],
    );
  }
}
