import 'package:english_words/english_words.dart';
import 'package:flutter/widgets.dart';

class _RandomWordState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordpair = WordPair.random();
    return Text(wordpair.asPascalCase);
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({super.key});

  @override
  State<RandomWords> createState() => _RandomWordState();
}
