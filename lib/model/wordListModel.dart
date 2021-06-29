import 'package:flutter/material.dart';
import 'package:myapp/repository/word_repository.dart';

class WordListModel extends ChangeNotifier {
  final WordRepository repository;
  List<String> _resultWordList = [];
  List<String> _allWordList = [];

  WordListModel(this.repository) {
    setResultWordList();
    _setAllWordList();
  }

  List<String> get resultWordList => _resultWordList;
  List<String> get allWordList => _allWordList;

  Future _setAllWordList() async {
    final wordList = await repository.getAllWordList();
    _allWordList = wordList;
    notifyListeners();
  }

  Future setResultWordList() async {
    final wordList = await repository.getResultWordList();
    _resultWordList = wordList;
    notifyListeners();
  }
}
