import 'package:flutter/material.dart';
import 'package:ideacross/repository/word_repository.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final resultWordListProvider = FutureProvider<List<String>>((ref) async {
  return await ref.read(repositoryProvider).getResultWordList();
});

final allWordListProvider = FutureProvider<List<String>>((ref) async {
  return await ref.read(repositoryProvider).getAllWordList();
});

final conceptCacheProvider = FutureProvider((ref) async {});

final conceptProvider =
    StateNotifierProvider<ConceptModelNotifier, ConceptModel>(
        (_) => ConceptModelNotifier());

@immutable
class ConceptModel {
  const ConceptModel({required this.concept});

  final String concept;

  ConceptModel copyWith(String? concept) {
    return ConceptModel(concept: concept ?? this.concept);
  }
}

class ConceptModelNotifier extends StateNotifier<ConceptModel> {
  ConceptModelNotifier() : super(ConceptModel(concept: '')) {
    _loadConceptFromCache();
  }

  void set(String concept) {
    state = state.copyWith(concept);
  }

  void cacheConcept() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('concept', state.concept);
  }

  void _loadConceptFromCache() async {
    final prefs = await SharedPreferences.getInstance();
    final String? concept = prefs.getString('concept');
    if (concept != null) {
      set(concept);
    }
  }
}
