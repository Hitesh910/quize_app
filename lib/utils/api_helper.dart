import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quize_app/screen/home/model/quizeModel.dart';
class ApiHelper
{
  static ApiHelper helper = ApiHelper._();
  ApiHelper._();

  Future<QuizeModel?> getData()
  async {
    String link = "https://opentdb.com/api.php?amount=10&category=9&difficulty=easy&type=multiple";

    var responces =await http.get(Uri.parse(link));

    if(responces.statusCode == 200)
      {
        var json = jsonDecode(responces.body);
        print("==================== ${json}");
        QuizeModel q1 = QuizeModel.mapToModel(json);
        // print("=================== model ${q1.response_code}");
        print("=================== model currect_answer ${q1.resultsList![0].question}");
        return q1;
      }
    return null;
  }
}