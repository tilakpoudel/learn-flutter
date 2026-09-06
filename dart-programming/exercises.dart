// Dart Foundations: question-only exercise sheet.
// Use intro.dart for examples and practice.dart for code scaffolding.
// This file intentionally contains questions and hints, not solution code.

// -----------------------------------------------------------------------------
// 1. Variables and basic types
// -----------------------------------------------------------------------------
// Q1. What is the difference between var, final, and const?
// Hint: Think about whether the variable can be reassigned and when its value
// must be known.
//
// Q2. Choose an appropriate Dart type for each value:
//     a) A student's name
//     b) The number of completed lessons
//     c) A course completion percentage
//     d) Whether the student passed
// Hint: Use String, int, double, or bool.
//
// Q3. A student's progress starts at 0.25 and later becomes 0.50. Which kind
// of variable should store it, and why?

// -----------------------------------------------------------------------------
// 2. Null safety
// -----------------------------------------------------------------------------
// Q1. What does the ? in String? mean?
// Hint: The value is allowed to be absent.
//
// Q2. How would you display a user's nickname, showing "No nickname" when no
// nickname was provided?
// Hint: Look at the ?? operator.
//
// Q3. Why can calling .length on a nullable String be unsafe?
// Hint: Ask what would happen if the value were null.
//
// Q4. When is using the ! operator reasonable, and what risk does it carry?

// -----------------------------------------------------------------------------
// 3. Operators and decisions
// -----------------------------------------------------------------------------
// Q1. Write the rules for a result message: 90+ is Excellent, 60-89 is Passed,
// and below 60 is Keep practicing.
// Hint: Order the conditions from the highest score to the lowest.
//
// Q2. What do ==, !=, >, <, >=, and <= mean?
// Hint: Each one compares two values and produces a bool.
//
// Q3. A learner can continue only when homework is complete AND the learner is
// logged in. Which logical operator expresses this rule?
// Hint: && requires both conditions to be true.

// -----------------------------------------------------------------------------
// 4. Loops
// -----------------------------------------------------------------------------
// Q1. When is a for loop a better choice than a while loop?
// Hint: Consider whether you know the counter or range in advance.
//
// Q2. Design a loop that prints the numbers 1 through 10.
// Hint: Start at 1, stop at 10, and update the counter every time.
//
// Q3. Design a countdown from 5 to 1 using a while loop.
// Hint: The loop condition must eventually become false.
//
// Q4. What can happen if the loop variable is never updated?

// -----------------------------------------------------------------------------
// 5. Collections
// -----------------------------------------------------------------------------
// Q1. When would you use a List, Map, or Set?
// Hint: Think ordered items, key-value lookups, and unique items.
//
// Q2. Describe how to add a new topic to a List and then visit every topic.
// Hint: Use the collection's add operation and a for-in loop.
//
// Q3. A Map contains names and scores. How would you find one student's score?
// Hint: A Map is read using its key.
//
// Q4. How would you create a collection containing only scores of 60 or higher?
// Hint: Use where with a condition, then convert the result to a List if needed.
//
// Q5. Why would converting a List to a Set remove duplicate tags?

// -----------------------------------------------------------------------------
// 6. Functions
// -----------------------------------------------------------------------------
// Q1. Explain the purpose of a function parameter and a return value.
// Hint: Parameters bring information in; return values send a result out.
//
// Q2. Design a function that receives a name and returns a welcome message.
// Hint: Give it a String parameter and a String return type.
//
// Q3. Design a function that receives two numbers and returns their product.
// Hint: The return type should be int if both inputs are int.
//
// Q4. Why might a named parameter be clearer than a positional parameter for a
// function that receives a progress value?
// Hint: Read the call as if you were seeing it for the first time.

// -----------------------------------------------------------------------------
// 7. Classes and objects
// -----------------------------------------------------------------------------
// Q1. What is the difference between a class and an object?
// Hint: One is a description; the other is a concrete instance.
//
// Q2. Design a Learner class with a name and a completed lesson count.
// Hint: Give the name a final field and let the count change.
//
// Q3. What method could increase the completed lesson count by one?
// Hint: A method can change mutable object state.
//
// Q4. Why are constructors useful when creating objects?
// Hint: They initialize the object's required data.

// -----------------------------------------------------------------------------
// 8. Enums and switch
// -----------------------------------------------------------------------------
// Q1. When is an enum a better choice than a free-form String?
// Hint: Use it when only a small, known set of values is valid.
//
// Q2. Design an enum for a task's status: notStarted, inProgress, and completed.
// Hint: Enum values are declared inside braces.
//
// Q3. Describe a switch that displays a different message for every status.
// Hint: Include one case for every enum value.

// -----------------------------------------------------------------------------
// 9. Errors and exceptions
// -----------------------------------------------------------------------------
// Q1. Why can converting user input from String to int fail?
// Hint: The input may contain characters that are not digits.
//
// Q2. Where should code that might throw an exception be placed?
// Hint: Use try, then handle the expected error in an on or catch branch.
//
// Q3. What message should an app show when a score cannot be parsed?
// Hint: Give the user a useful next step rather than exposing a technical
// failure only.
//
// Q4. What is the difference between handling an error and ignoring an error?

// -----------------------------------------------------------------------------
// 10. Async code
// -----------------------------------------------------------------------------
// Q1. What does a Future represent?
// Hint: It represents a value that will be available later.
//
// Q2. What does the async keyword allow a function to use?
// Hint: It enables await inside that function.
//
// Q3. Describe the order of events when a function prints "Loading", awaits a
// Future, and then prints "Complete".
// Hint: The second print happens after the Future finishes.
//
// Q4. Give two real Flutter examples of work that might be asynchronous.
// Hint: Think about networks, files, databases, or device services.

// -----------------------------------------------------------------------------
// Review challenge
// -----------------------------------------------------------------------------
// Design a small student progress model on paper before writing code. It should
// have a student name, nullable nickname, scores, a learning level, and a method
// that reports whether the student passed.
//
// Hints:
// - Choose a type for every piece of data.
// - Use a class to group data and behavior.
// - Use an enum for the learning level.
// - Use a function or method to calculate the result.
// - Decide how invalid score input should be handled.
