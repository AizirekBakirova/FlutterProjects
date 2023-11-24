class QuizBrain {
  QuizBrain({required this.suroo, required this.joop});
  final String suroo;
  final bool joop;
}

QuizBrain q1 = QuizBrain(suroo: 'Kyrgyzstanda 7 oblast barby?', joop: true);
QuizBrain q2 = QuizBrain(suroo: 'Kyrgyzstan toolu olkobu? ', joop: true);
QuizBrain q3 = QuizBrain(
    suroo: 'Kyrgyzstanda samolet chygaruuchu zavod barby??', joop: false);
QuizBrain q4 = QuizBrain(
    suroo: 'Flutter Microsoft companiyasynda ishtelip chykkanby?', joop: false);
QuizBrain q5 = QuizBrain(suroo: 'Krokodil bakka chygaby?', joop: false);
QuizBrain q6 = QuizBrain(suroo: 'Jer planetasy togolokpu?', joop: true);
QuizBrain q7 =
    QuizBrain(suroo: 'Telefondo programma jaza alasyzby?', joop: false);
QuizBrain q8 = QuizBrain(suroo: 'Adam suiloibu?', joop: true);
QuizBrain q9 =
    QuizBrain(suroo: 'The USA Afrika kontinentinde jaigashkanby?', joop: false);
QuizBrain q10 = QuizBrain(suroo: 'Kyrgyz eli baatyr elbi?', joop: true);

final quizeList = [q1, q2, q3, q4, q5, q6, q7, q8, q9, q10];
