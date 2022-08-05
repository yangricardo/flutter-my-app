import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 10);

  @override
  Widget build(BuildContext context) {
    final wordpair = WordPair.random();
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, index) {
          if (index.isOdd) return const Divider();
          if (index ~/ 2 >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return ListTile(
            title: Text(_suggestions[index].asPascalCase, style: _biggerFont),
          );
        });
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({super.key});

  @override
  State<RandomWords> createState() => _RandomWordsState();
}
