// Practice sets for Dart Foundations.
// Complete the TODO sections after studying intro.dart.
// Run this file with: dart run dart-programming/practice.dart

Future<void> main() async {
  practice1Variables();
  practice2NullSafety();
  practice3Decisions();
  practice4Loops();
  practice5Collections();
  practice6Functions();
  practice7Classes();
  practice8Enums();
  practice9Exceptions();
  await practice10Async();
}

void practice1Variables() {
  printSection('Practice 1: Variables and basic types');

  // Task: Create values for a student's name, age, and course progress.
  // Hint: Use String for text, int for whole numbers, and double for decimals.
  final studentName = 'Your name';
  final age = 0;
  final progress = 0.0;

  print('$studentName is $age years old and is $progress% complete.');
  // Expected after completing: Asha is 21 years old and is 75.0% complete.
}

void practice2NullSafety() {
  printSection('Practice 2: Null safety');

  // Task: Print the nickname when it exists, or "No nickname" when it is null.
  // Hint: A nullable String is written as String?. The ?? operator provides a fallback.
  String? nickname;
  print(nickname ?? 'TODO: add a fallback');

  nickname = 'Ace';
  final displayedNickname = nickname as String?;
  print(displayedNickname ?? 'TODO: add a fallback');
  // Expected output: No nickname, then Ace.
}

void practice3Decisions() {
  printSection('Practice 3: Decisions');

  // Task: Print "Excellent" for 90 or more, "Passed" for 60-89,
  // and "Keep practicing" for anything below 60.
  // Hint: Use if, else if, and else. Test more than one score.
  final score = 82;
  if (score >= 90) {
    print('TODO: excellent message');
  } else if (score >= 60) {
    print('TODO: passed message');
  } else {
    print('TODO: practice message');
  }
}

void practice4Loops() {
  printSection('Practice 4: Loops');

  // Task: Print the numbers 1 through 5 using a for loop.
  // Hint: Start a counter at 1 and continue while it is <= 5.
  for (var number = 1; number <= 5; number++) {
    print('TODO: $number');
  }

  // Task: Print a countdown from 3 to 1 using a while loop.
  // Hint: Decrease countdown inside the loop, or it will never finish.
  var countdown = 3;
  while (countdown > 0) {
    print('TODO: countdown $countdown');
    countdown--;
  }
}

void practice5Collections() {
  printSection('Practice 5: Collections');

  // Task: Add "Async" to this list and print every topic.
  // Hint: Use add() and a for-in loop.
  final topics = <String>['Variables', 'Functions', 'Classes'];
  topics.add('TODO: new topic');
  for (final topic in topics) {
    print(topic);
  }

  // Task: Find the score for Asha and print all scores that are 60 or higher.
  // Hint: A map uses map[key]. Use values.where(...).toList() for filtering.
  final scores = <String, int>{'Asha': 75, 'Ravi': 48, 'Mina': 92};
  print('Asha: ${scores['Asha']}');
  final passingScores = scores.values.where((score) => score >= 60).toList();
  print('Passing scores: $passingScores');

  // Task: Remove duplicate tags by converting the list to a Set.
  // Expected tags: {dart, flutter}.
  final tags = <String>['dart', 'flutter', 'dart'];
  print(tags.toSet());
}

void practice6Functions() {
  printSection('Practice 6: Functions');

  // Task: Complete the functions below and call them here.
  // Hint: A concise function can use =>. Named parameters make calls clearer.
  print(greetStudent('Asha'));
  print(calculateTotal(12, 8));
  print(formatPercent(progress: 0.75));
}

String greetStudent(String name) {
  // TODO: Return "Welcome, <name>!"
  return 'TODO: greeting';
}

int calculateTotal(int first, int second) {
  // TODO: Return the sum of first and second.
  return 0;
}

String formatPercent({required double progress}) {
  // TODO: Convert 0.75 to "75%".
  return 'TODO: percent';
}

void practice7Classes() {
  printSection('Practice 7: Classes and objects');

  // Task: Create a Learner, complete two lessons, and print the result.
  // Hint: Use the constructor, call completeLesson(), then read the fields.
  final learner = PracticeLearner(name: 'Asha');
  learner.completeLesson();
  learner.completeLesson();
  print('${learner.name} completed ${learner.completedLessons} lessons.');
}

class PracticeLearner {
  PracticeLearner({required this.name});

  final String name;
  int completedLessons = 0;

  void completeLesson() {
    // TODO: Increase completedLessons by one.
  }
}

void practice8Enums() {
  printSection('Practice 8: Enums and switch');

  // Task: Print a different message for each learning level.
  // Hint: Add one case for every value in the Level enum.
  const level = PracticeLevel.intermediate;
  switch (level) {
    case PracticeLevel.beginner:
      print('TODO: beginner message');
    case PracticeLevel.intermediate:
      print('TODO: intermediate message');
    case PracticeLevel.advanced:
      print('TODO: advanced message');
  }
}

enum PracticeLevel { beginner, intermediate, advanced }

void practice9Exceptions() {
  printSection('Practice 9: Errors and exceptions');

  // Task: Safely parse user input and handle invalid text.
  // Hint: int.parse() throws FormatException when the text is not a number.
  const input = 'not a number';
  try {
    final score = int.parse(input);
    print('Score: $score');
  } on FormatException {
    print('TODO: show an invalid score message');
  }
}

Future<void> practice10Async() async {
  printSection('Practice 10: Async code');

  // Task: Wait for loadPracticeData() and then print the returned message.
  // Hint: Mark the function async and use await before the Future result.
  print('Loading...');
  final result = await loadPracticeData();
  print(result);
}

Future<String> loadPracticeData() async {
  await Future<void>.delayed(const Duration(milliseconds: 200));
  return 'TODO: replace with loaded data';
}

void printSection(String title) {
  print('\n--- $title ---');
}
