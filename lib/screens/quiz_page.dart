import 'package:flutter/material.dart';

import '../model/question_bank.dart';
import '../widgets/model_answer.dart';
import '../widgets/question.dart';
import 'results.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MyHomePage(title: "Quiz App : MCQs");
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  var totalScore = 0;

  // Keep track of the answers that have been chosen.
  Map<int, int> selectedAnswers = {};
  Map<int, int> wrongAnswers = {};

  void answeredQuestion(int score, int correctedAnswer) {
    selectedAnswers[index] = correctedAnswer;
    if (selectedAnswers[index] == questionList[index].answerIndex) {
      totalScore++;
    } else if (selectedAnswers[index] != questionList[index].answerIndex) {
      wrongAnswers[index] = correctedAnswer;
    }
    print(wrongAnswers);
    // print(wrongAnswerList);

    setState(() {
      index++;
    });
  }

  List get wrongAnswerList {
    List wrongAnswer = [];
    List wrongAnswerText = [];
    for (int wrongChoice in wrongAnswers.keys) {
      wrongAnswer.add(wrongAnswers[wrongChoice]);
    }
    for (int i in wrongAnswer) {
      wrongAnswerText.add(questionList[index].answers[i]);
    }
    // print(wrongAnswer);
    return wrongAnswerText;
  }

  void resetQuiz() {
    setState(() {
      index = 0;
      totalScore = 0;
      wrongAnswers = {};
      print(wrongAnswerList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      drawer: const Drawer(),
      body: (index < questionList.length)
          ? Center(
              child: Column(
                children: [
                  Question(questionText: questionList[index].questionText),
                  for (var i = 0; i < (questionList[index].answers).length; i++)
                    ModelAnswer(
                        selectAnswer: () => answeredQuestion(index, i),
                        answer: questionList[index].answers[i],
                        isSelected: selectedAnswers[index] == i,
                        isCorrectAnswer: questionList[index].answerIndex == i)
                ],
              ),
            )
          : Center(
              child: Results(totalScore: totalScore, onPressed: resetQuiz)),
    );
  }
}
