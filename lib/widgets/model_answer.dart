import 'package:flutter/material.dart';

class ModelAnswer extends StatelessWidget {
  const ModelAnswer({
    super.key,
    required this.answer,
    required this.selectAnswer,
    required this.isSelected,
    required this.isCorrectAnswer,
  });
  final VoidCallback selectAnswer;
  final String answer;
  final bool isSelected;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: MediaQuery.of(context).size.height / 16,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: selectAnswer,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.purple),
          foregroundColor: MaterialStateProperty.all(Colors.amber),
        ),
        child: Text(answer,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            )),
      ),
    );
  }
}
