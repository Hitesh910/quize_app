import 'package:get/get.dart';
import 'package:quize_app/screen/home/model/quizeModel.dart';

import '../../../utils/api_helper.dart';

class HomeController extends GetxController
{
  Future<QuizeModel?>? model;
  // RxList<QuizeModel> quizeList = <QuizeModel>[].obs;

  RxList<ResultsModel>? resultList = <ResultsModel>[].obs;
  RxInt count = 0.obs;


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


 void getData(int no)
   {
  model =  ApiHelper.helper.getData(no);
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
  }
}