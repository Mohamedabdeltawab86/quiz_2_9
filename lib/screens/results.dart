import 'package:flutter/material.dart';
import './quiz_page.dart';

class Results extends StatelessWidget {
  const Results({super.key, required this.totalScore, required this.onPressed});
  final int totalScore;
  final VoidCallback onPressed;

  String get resultPhrase {
    String resultText;
    if (totalScore >= 9) {
      resultText = "You arer Excellent";
    } else if (totalScore > 7) {
      resultText = "You are Good";
    } else if (totalScore > 5) {
      resultText = "You are Good";
    } else {
      resultText = "Not Passed, try again";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromARGB(255, 27, 203, 216),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("انتهت الأسئلة مع تمنياتنا لك بالتوفيق",
                style: TextStyle(
                  fontSize: 28,
                )),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Your Score is $totalScore/10",
              style: const TextStyle(
                fontSize: 28,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Your Percentage is ${(totalScore / 10) * 100}%",
              style: const TextStyle(
                fontSize: 28,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(resultPhrase,  style: const TextStyle(
                fontSize: 28,
              ),),
            const SizedBox(height: 30,),
            // ...wrongAnswerList
            ElevatedButton(
                onPressed: onPressed, child: const Text('أعد الاختبار'))
          ],
        ),
      ),
    );
  }
}
