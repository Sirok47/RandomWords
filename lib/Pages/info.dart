import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class ShowInfo extends StatelessWidget {
  final WordPair value;
  const ShowInfo(this.value, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(value.asCamelCase),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text('''
        Backwards - ${value.second+value.first}
        Separate - ${value.first+' '+value.second}
        UpperCase - ${value.asUpperCase}
        ''',
          style: const TextStyle(fontSize: 23,height: 2,color: Colors.indigo),),
      ),
    );
  }
}