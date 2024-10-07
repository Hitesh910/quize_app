import 'package:get/get.dart';
import 'package:quize_app/screen/home/model/quizeModel.dart';
import 'package:quize_app/screen/home/model/resultModel.dart';

import '../../../utils/api_helper.dart';

class HomeController extends GetxController
{
  QuizeModel? model;
  // RxList<QuizeModel> quizeList = <QuizeModel>[].obs;

  RxList<ResultsModel>? resultList = <ResultsModel>[].obs;
  RxList? optionList = [].obs;
  RxInt count = 0.obs;
  RxInt index = 0.obs;


  List<Map> imageList = [
    {
      "images" : "assets/images/general.png",
      "name" : "General",
      "code" : 9,
    },
    {
      "images" : "assets/images/books.png",
      "name" : "Books",
      "code" : 10,
    },
    {
      "images" : "assets/images/film.png",
      "name" : "Films",
      "code" : 11,
    },
    {
      "images" : "assets/images/music.png",
      "name" : "Musics",
      "code" : 12,
    },
    {
      "images" : "assets/images/theaters.png",
      "name" : "Theaters",
      "code" : 13,
    },
    {
      "images" : "assets/images/television.png",
      "name" : "Television",
      "code" : 14,
    },
    {
      "images" : "assets/images/videogames.png",
      "name" : "Video games",
      "code" : 15,
    },
    {
      "images" : "assets/images/boardgames.png",
      "name" : "Board games",
      "code" : 16,
    },
  ];


 Future<void> getData(int no)
   async {
   resultList!.clear();
  model =await  ApiHelper.helper.getData(no);
  resultList!.addAll(model!.resultsList!);

  for(var x in resultList!)
    {
      String? question= x.question;
      String? ans= x.correct_answer;
      List? l1 = x.incorrect_answer;
      l1!.add(ans);
      l1.shuffle();

      ResultModelOn? model = ResultModelOn(questions: question,ans: ans,optionList: l1);

    }

   print(" ============================ question data${resultList![0].question}");
   print(" ============================ question data${resultList![1].question}");
   print(" ============================ question data${resultList![2].question}");
   print(" ============================ question data${resultList![3].question}");
  // print("=================== modeðl list ${model!.resultsList![0].category}");
  }

  void addData()
  {
    print("====================== only data ${resultList!.length}");
    print("====================== only data ${resultList![0].incorrect_answer![0]}");
  }

  void countData()
  {
    count++;
    resultList!.shuffle();
  }

  void optionChange(index)
  {
    optionList!.clear();
   optionList!.add(resultList![index].incorrect_answer![0]);
   optionList!.add(resultList![index].incorrect_answer![1]);
   optionList!.add(resultList![index].incorrect_answer![2]);
   optionList!.add(resultList![index].correct_answer);

   optionList!.shuffle();

   print("======================== question ${resultList![index].question}");
   print("======================== option ${optionList![0]}");
   print("======================== option ${optionList![1]}");
   print("======================== option ${optionList![2]}");
   print("======================== option ${optionList![3]}");
  }
}