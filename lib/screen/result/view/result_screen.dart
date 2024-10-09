import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quize_app/screen/home/controller/home_controller.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  HomeController controller = Get.put(HomeController());
  late ConfettiController _controllerRight;
  bool isConfity = false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controllerRight = ConfettiController(duration:  const Duration(seconds: 5));
    _controllerRight.play();
  }
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controllerRight.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Result"),
      // ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/game.png"),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
                      const Text(
                        "Quize Result",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "barlow",
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Image.asset(
                        "assets/images/trophy2.png",
                        fit: BoxFit.fill,
                        height: 200,
                        width: 200,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Score : ${controller.result.value}/10",
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 22,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Get.toNamed("/home");
                          controller.result.value = 0;
                        },
                        icon: const Icon(Icons.home),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
