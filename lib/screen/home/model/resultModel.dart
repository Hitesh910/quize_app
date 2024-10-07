class ResultModelOn
{
  String? questions,ans;
  List<dynamic>? optionList = [];

  ResultModelOn({this.questions, this.ans, this.optionList});

  // factory ResultModel.mapToModel(Map m1)
  // {
  //   List l1 = m1['optionList'];
  //   return ResultModel(questions: m1['questions'],ans: m1['ans'],optionList: l1.map((e) => ,))
  // }
}