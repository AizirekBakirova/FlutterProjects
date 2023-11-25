class QuizBrain {
  QuizBrain({required this.suroo, required this.joop});
  final String suroo;
  final bool joop;
}

QuizBrain q1 =
    QuizBrain(suroo: 'Butterflies taste things with their wings.', joop: false);
// False - butterflies taste with their feet.
QuizBrain q2 = QuizBrain(
    suroo: 'John Glenn was the oldest astronaut to travel in space.',
    joop: true);
// True – he was 77 years old.
QuizBrain q3 = QuizBrain(
    suroo: ' The Statue of Liberty is the world’s tallest monument.',
    joop: false);
// False – The State of Unity is the world’s tallest monument.
QuizBrain q4 = QuizBrain(
    suroo: 'Lightning can’t strike in the same place twice.', joop: false);
//  False - lightning can actually strike in the same place more than one time.

QuizBrain q5 =
    QuizBrain(suroo: 'Golf balls have 300 to 500 dimples.', joop: true);
// True – all golf balls don’t have the same number of dimples.
QuizBrain q6 = QuizBrain(suroo: 'The sun is not a star.', joop: false);
// False - the sun is actually star.

QuizBrain q7 = QuizBrain(
    suroo: 'Ants can hold up to 5,000 times their body weight.', joop: true);
// True - they may be small, but they can hold a lot.

QuizBrain q8 = QuizBrain(
    suroo: 'The blue whale is the biggest animal to have ever lived.',
    joop: true);
// True - they weigh up to 300,000 pounds and can be over 100 feet long.
QuizBrain q9 = QuizBrain(suroo: 'Bats are blind.', joop: false);
// False - bats can see, they just use ultrasound to helpldirect them.
QuizBrain q10 = QuizBrain(
    suroo: 'Dinosaurs are the biggest animals to ever live.', joop: false);
// False - it`s the blue whale.

final quizeList = [q1, q2, q3, q4, q5, q6, q7, q8, q9, q10];
