import 'dart:convert';

List<Question> QuestionListFromJson(String val) => List<Question>.from(json
    .decode(val)['data']
    .map((question) => Question.QuestionFromJson(question)));

class Question {
  final int id;
  final String questionText;
  final String options;

  Question({
    required this.id,
    required this.questionText,
    required this.options,
  });

  factory Question.QuestionFromJson(Map<String, dynamic> data) => Question(
      id: data['id'],
      questionText: data['attributes']['questionText'],
      options: data['attributes']['A']['B']['C']['D']['E']);
}
