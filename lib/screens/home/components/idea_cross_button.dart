import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/model/wordListModel.dart';

class IdeaCrossButton extends ConsumerWidget {
  const IdeaCrossButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 40,
      width: 360,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ElevatedButton(
          onPressed: () {
            if (ref.watch(conceptProvider).concept.isEmpty) {
              return null;
            }
            ref.read(conceptProvider.notifier).cacheConcept();
            ref.refresh(resultWordListProvider);
            Navigator.pushNamed(context, '/result');
          },
          child: Text(
            'IDEA CROSS!',
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
