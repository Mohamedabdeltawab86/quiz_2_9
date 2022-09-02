import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({super.key, required this.questionText});

  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            // height: MediaQuery.of(context).size.height / 8,
            color: Theme.of(context).colorScheme.secondary,
            child: Text(
              questionText,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )));
  }
}
