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
    _controllerRight = ConfettiController(duration: const Duration(seconds: 5));
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
                      const Text(
                        "Congratulation",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          wordSpacing: 15,
                          color: Colors.white,
                          fontFamily: "barlow",
                          fontSize: 22,
                          letterSpacing: 6,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Your Score",
                        style: TextStyle(
                            color: Colors.grey, fontSize: 20, letterSpacing: 5),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${controller.result.value} ",
                            style: TextStyle(
                                color: controller.result.value < 5
                                    ? Colors.red
                                    : Colors.green,
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                fontFamily: "barlow"),
                          ),
                          const Text(
                            "/ 10",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Container(
                          //   height: MediaQuery.sizeOf(context).height * 0.05,
                          //   width: MediaQuery.sizeOf(context).width * 0.2 ,
                          //   decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(15),color: Colors.white),
                          // ),
                          // SizedBox(width: MediaQuery.sizeOf(context).width * 0.05,),
                          InkWell(
                            onTap: () {
                              Get.toNamed("/home");
                              controller.result.value = 0;
                            },
                            child: Container(
                              height: MediaQuery.sizeOf(context).height * 0.05,
                              width: MediaQuery.sizeOf(context).width * 0.4,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.lightBlueAccent,
                              ),
                              child: const Text(
                                "Take new Quize",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // IconButton(
                      //   onPressed: () {
                      //     Get.toNamed("/home");
                      //     controller.result.value = 0;
                      //   },
                      //   icon: const Icon(Icons.home),
                      // ),
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
