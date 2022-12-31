import 'package:flutter/services.dart';
import 'dart:math' as math;

import 'package:riverpod/riverpod.dart';

final repositoryProvider = Provider<WordRepository>((ref) {
  return WordRepository();
});

class WordRepository {
  // CSVファイルからランダムで10個単語を抽出
  Future<List<String>> getResultWordList() async {
    List<String> list = [];
    var randomIndexList =
        List<int>.generate(10, (index) => math.Random().nextInt(7055));

    String csv = await rootBundle.loadString('data/words.csv');
    var count = -1;
    for (String line in csv.split("\n")) {
      count++;
      if (!randomIndexList.contains(count)) continue;
      List rows = line.split(',');
      list.add(rows[0]);
      if (list.length == 10) break;
    }

    return list;
  }

  Future<List<String>> getAllWordList() async {
    List<String> list = [];

    String csv = await rootBundle.loadString('data/words.csv');
    for (String line in csv.split("\n")) {
      List rows = line.split(',');
      list.add(rows[0]);
    }
    return list;
  }
}
