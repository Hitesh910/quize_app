import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Get.put(HomeController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffedf3f6),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height * 0.24,
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(0),
                decoration: const BoxDecoration(
                  color: Color(0xff2a2b31),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: const Alignment(0, 7),
                  heightFactor: 1.07,
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 0.29,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/ad.png"),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.06,
          ),
          // Transform.scale(
          //   alignment: const Alignment(0, -10),
          //   scale: 0.9,
          //   child: Container(
          //     height: MediaQuery.sizeOf(context).height * 0.29,
          //     width: MediaQuery.sizeOf(context).width,
          //     decoration: const BoxDecoration(
          //       image: DecorationImage(
          //         image: AssetImage("assets/images/ad.png"),
          //         fit: BoxFit.fill,
          //       ),
          //       borderRadius: BorderRadius.all(
          //         Radius.circular(
          //           15,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Top category",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text("See all"),
                )
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: homeController.imageList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return Container(
                  height: 400,
                  width: 400,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              10,
                            ),
                          ),
                          image: DecorationImage(
                            image: AssetImage(
                              "${homeController.imageList[index]['images']}",
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Text("${homeController.imageList[index]['name']}"),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
