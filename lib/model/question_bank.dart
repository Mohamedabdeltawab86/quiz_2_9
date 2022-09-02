class QuestionBank {
  final String questionText;
  final List<String> answers;
  final int answerIndex;

  QuestionBank({
    required this.questionText,
    required this.answers,
    required this.answerIndex,
  });
}

List<QuestionBank> questionList = [
  QuestionBank(
    questionText:
        "أصول التفسير هي المعيار الذي تقاس به الأقوال في تفسير القرآن، ويعرف الصحيح مما هو دونه",
    answers: ["صح", "خطأ"],
    answerIndex: 0,
  ),
  QuestionBank(
    questionText: "كانت مسائل أصول التفسير قبل أن تستقل مدونة ضمن",
    answers: [
      "مقدمات المفسرين",
      "علوم القرآن",
      "أصول الفقه",
      "الأولى والثانية",
      "جميع ما سبق"
    ],
    answerIndex: 4,
  ),
  QuestionBank(
    questionText: "المصادر الكلية الأولية التي استخدمها الصحابة في التفسير :",
    answers: [
      "القرآن",
      "اللغة",
      "السنة",
      "المعلومات المتعلقة بالنزول",
      "الأولى والثالثة",
      "جميع ما سبق"
    ],
    answerIndex: 5,
  ),
  QuestionBank(
    questionText: "من أبرز كتب التفسير المعنية بتفسير القرآن بالقرآن ",
    answers: [
      "تفسير القرآن لمقاتل بن سليمان",
      "تفسير القرآن العظيم لابن كثير الدمشقي",
      "أضواء البيان في إيضاح القرآن بالقرآن لمحمد الأمين الشنقيطي",
      "الثانية والثالثة",
      "جميع ما سبق"
    ],
    answerIndex: 4,
  ),
  QuestionBank(
    questionText: "من أبرز كتب التفسير المعنية بتفسير القرآن بالسنة",
    answers: [
      "جامع البيان عن تأويل أي القرآن لمحمد بن جرير الطبري",
      "تفسير القرآن العظيم لابن کثیر",
      "الدر المنثور في التفسير المأثور للسيوطي",
      "الأولى والثالثة",
      "جميع ما سبق"
    ],
    answerIndex: 4,
  ),
  QuestionBank(
      questionText: " أبرز من اشتهر بالتفسير من الصحابة هو ",
      answers: [
        "أبو بكر الصديق رضى الله عنه",
        "عمر بن الخطاب رضى الله عنه",
        "عبد الله بن العباس رضى الله عنه",
        "حذيفة بن اليمان رضى الله عنه"
      ],
      answerIndex: 2),
  QuestionBank(
      questionText:
          "ظهر الاهتمام بجمع الكلام العربي وتدوينه في النصف الثاني من القرن ",
      answers: [
        "الأول الهجري",
        "الثاني الهجري",
        "الثالث الهجري",
        "الرابع الهجري"
      ],
      answerIndex: 0),
  QuestionBank(
      questionText: "التفسير بالرأى لم يكن موجودا فى عهد النبى ﷺ",
      answers: [
        "صح",
        "خطأ",
      ],
      answerIndex: 1),
  QuestionBank(
      questionText: "تفسير القرآن بالرأى الذى يكون عن جهل ",
      answers: [
        "مباح",
        "مكروه",
        "محرَّم",
      ],
      answerIndex: 2),
  QuestionBank(
      questionText:
          "فى قوله تعالى (كَأَنَّهُمْ حُمُرٌ مُّسْتَنفِرَةٌ - فَرَّتْ مِن قَسْوَرَةٍ) وقع الخلاف فى تفسير كلمة 'قسورة' بسبب ",
      answers: [
        "الإشتراك اللغوى",
        "الاختلاف فى مرجع الضمير",
        "اختلاف المصدر المعتمد عليه فى التفسير",
      ],
      answerIndex: 0)
];

String get answer {
  return questionList[1].questionText;
}

set newAnswer(int score) {
  score++;
}
