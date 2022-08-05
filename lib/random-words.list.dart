import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class _RandomWordsListState extends State<RandomWordsList> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 10);

  @override
  Widget build(BuildContext context) {
    final wordpair = WordPair.random();
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return const Divider();
          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return ListTile(
            title: Text(_suggestions[index].asPascalCase, style: _biggerFont),
          );
        });
  }
}

class RandomWordsList extends StatefulWidget {
  const RandomWordsList({super.key});

  @override
  State<RandomWordsList> createState() => _RandomWordsListState();
}
