import 'package:flutter/material.dart';
import 'package:myapp/repository/word_repository.dart';

class WordListModel extends ChangeNotifier {
  final WordRepository repository;
  List<String> _wordList = [];

  WordListModel(this.repository) {
    setWordList();
  }

  List<String> get wordList => _wordList;

  Future setWordList() async {
    final wordList = await repository.getWordListFromCSV();
    _wordList = wordList;
    notifyListeners();
  }
}
