import 'package:flutter/services.dart';
import 'dart:math' as math;

class WordRepository {
  // CSVファイルからランダムで10個単語を抽出
  Future<List<String>> getWordListFromCSV() async {
    List<String> list = [];
    var randomIndexList =
        List<int>.generate(10, (index) => math.Random().nextInt(7055));
    String csv = await rootBundle.loadString('data/words.csv');
    var count = -1;
    for (String line in csv.split("\n")) {
      count++;
      if (randomIndexList.contains(count)) {
        print(count);
        List rows = line.split(',');
        list.add(rows[0]);
        print(rows[0]);
      }

      if (list.length == 10) break;
    }
    print(list);
    return list;
  }
}
