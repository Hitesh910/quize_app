class QuizeModel {
  int? response_code;
  List<ResultsModel>? resultsList = [];

  QuizeModel({this.resultsList,this.response_code});

  factory QuizeModel.mapToModel(Map m1)
  {
    List l1 = m1['results'];
    return QuizeModel(resultsList: l1.map((e) => ResultsModel.mapToModel(e),).toList(),response_code: m1['response_code']);
  }
}

class ResultsModel {
  List<dynamic>?  incorrect_answer =[];
  String? types, difficulty, category, question, correct_answer;

  ResultsModel(
      {this.types,
      this.difficulty,
      this.category,
      this.question,
      this.correct_answer,
      this.incorrect_answer});

  factory ResultsModel.mapToModel(Map m1) {
    return ResultsModel(
        types: m1['types'],
        difficulty: m1['difficulty'],
        category: m1['category'],
        question: m1['question'],
        correct_answer: m1['correct_answer'],
        incorrect_answer: m1['incorrect_answer']);
  }
}

class AnswerModel {}
