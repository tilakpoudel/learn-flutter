// Dart foundations for students preparing to learn Flutter.
// Run this file with: dart run dart-programming/intro.dart

Future<void> main() async {
  lesson1Variables();
  // lesson2NullSafety();
  // lesson3Decisions();
  // lesson4Loops();
  // lesson5Collections();
  // lesson6Functions();
  // lesson7Classes();
  // lesson8Enums();
  // lesson9Exceptions();
  // await lesson10Async();
}

void lesson1Variables() {
  printSection('1. Variables and basic types');

  // Dart can infer a variable's type from its value. Explicit types are useful
  // when teaching or when you want the type to be especially clear.
  final studentName = 'Krishna';

  // Use final when a value is assigned once. Use const for compile-time values.
  const courseName = 'Dart Foundations';
  var lessonNumber = 1;
  lessonNumber = 2;

  print('$studentName is studying $courseName, lesson $lessonNumber.');

  int age = 20;
  double progress = 0.75;
  bool isLearning = true;
  String greeting = 'Welcome';
  print(
    '$greeting, $studentName! Age: $age, progress: $progress, learning: $isLearning',
  );
}

void lesson2NullSafety() {
  printSection('2. Null safety');

  // The ? means this String may be null. Dart requires us to handle that case
  // before using the value as an ordinary String.
  String? nickname;
  print(nickname ?? 'No nickname provided');
  nickname = 'Kanaiya';
  print(nickname);

  // After the assignment above, Dart knows nickname is not null here. The !
  // operator can also assert this, but use it only when you are certain.
  print(nickname.length);
}

void lesson3Decisions() {
  printSection('3. Operators and decisions');

  final score = 82;
  final isLearning = true;

  // Conditions choose which block runs. Comparisons such as >= produce bools.
  if (score >= 90) {
    print('Excellent');
  } else if (score >= 60) {
    print('Passed');
  } else {
    print('Keep practicing');
  }

  final hasCompletedHomework = score >= 80;
  // && means both conditions must be true. The conditional expression chooses
  // one of two values and is useful for small decisions.
  print(
    hasCompletedHomework && isLearning
        ? 'Ready for the next lesson'
        : 'Review this lesson',
  );
}

void lesson4Loops() {
  printSection('4. Loops');

  // A for loop is useful when a counter or a known range controls repetition.
  for (var number = 1; number <= 3; number++) {
    print('For loop: $number');
  }

  // A while loop repeats while its condition remains true. Change countdown
  // inside the loop so that the loop eventually stops.
  var countdown = 3;
  while (countdown > 0) {
    print('Countdown: $countdown');
    countdown--;
  }
}

void lesson5Collections() {
  printSection('5. Collections');

  // A List keeps items in order and can contain duplicates.
  final topics = <String>['Variables', 'Functions', 'Classes'];
  topics.add('Async code');
  for (final topic in topics) {
    print('Topic: $topic');
  }

  // A Map stores key-value pairs, which is useful for looking up a score by name.
  final studentScores = <String, int>{'Maya': 82, 'Noah': 91};
  print('Maya scored ${studentScores['Maya']}');

  final passedScores = studentScores.values
      .where((value) => value >= 60)
      .toList();
  print('Passing scores: $passedScores');

  // A Set keeps only unique values. toSet() converts the List into a Set.
  final uniqueTags = <String>['dart', 'flutter', 'dart'].toSet();
  print('Unique tags: $uniqueTags');
}

void lesson6Functions() {
  printSection('6. Functions');

  const studentName = 'Krishna';
  const progress = 0.75;
  // Functions package reusable behavior. They can receive arguments and return
  // a result, which keeps larger Flutter programs easier to organize.
  print(greet(studentName));
  print(add(4, 5));
  print(formatProgress(progress: progress));
}

void lesson7Classes() {
  printSection('7. Classes and objects');

  // A class describes data and behavior. An object is one usable instance of
  // that class, created here with a named constructor argument.
  final learner = Learner(name: 'Krishna', completedLessons: 2);
  learner.completeLesson();
  print('${learner.name} has completed ${learner.completedLessons} lessons.');
}

void lesson8Enums() {
  printSection('8. Enums and switch');

  final currentLevel = Level.beginner;
  // An enum limits a value to a known set of choices. switch handles each case.
  switch (currentLevel) {
    case Level.beginner:
      print('Start with the Dart basics.');
    case Level.intermediate:
      print('Practice building reusable widgets soon.');
    case Level.advanced:
      print('Explore architecture and performance.');
  }
}

void lesson9Exceptions() {
  printSection('9. Errors and exceptions');

  // Code that can fail goes in try. A matching catch block handles the failure
  // without stopping the whole program.
  try {
    print(parseScore('not a number'));
  } on FormatException catch (error) {
    print('Could not parse the score: $error');
  }
}

Future<void> lesson10Async() async {
  printSection('10. Async code');

  // Future represents a value that will arrive later. async allows await, which
  // pauses this function until the Future completes without blocking the app.
  print('Loading a lesson...');
  final lesson = await loadLesson();
  print(lesson);
}

void printSection(String title) {
  print('\n--- $title ---');
}

String greet(String name) => 'Hello, $name!';

// The return type comes first, followed by the function name and parameters.
int add(int first, int second) => first + second;

// required named parameters make calls self-documenting:
// formatProgress(progress: 0.75)
String formatProgress({required double progress}) {
  final percentage = (progress * 100).round();
  return 'Progress: $percentage%';
}

int parseScore(String text) {
  final score = int.parse(text);
  // Parsing can fail, so callers should handle FormatException.
  if (score < 0 || score > 100) {
    throw FormatException('Score must be between 0 and 100');
  }
  return score;
}

Future<String> loadLesson() async {
  // This delay stands in for work such as reading a file or calling a server.
  await Future<void>.delayed(const Duration(milliseconds: 200));
  return 'Lesson loaded successfully.';
}

enum Level { beginner, intermediate, advanced }

class Learner {
  Learner({required this.name, this.completedLessons = 0});

  // final fields cannot be replaced after construction. This field can change
  // because completing a lesson updates the object's state.
  final String name;
  int completedLessons;

  void completeLesson() {
    completedLessons++;
  }
}
