import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quize_app/screen/home/controller/home_controller.dart';

import '../../home/model/quizeModel.dart';

class QuizeScreen extends StatefulWidget {
  const QuizeScreen({super.key});

  @override
  State<QuizeScreen> createState() => _QuizeScreenState();
}

class _QuizeScreenState extends State<QuizeScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff141a33),
        // appBar: AppBar(title: const Text("Quize"),),
        body: Obx(() {
          return controller.resultList!.isEmpty
              ?  Center(child: CircularProgressIndicator(color: Colors.white,))
          :
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Mathematics Quize",
                  style: TextStyle(color: Color(0xff343a50), fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Question ${controller.count.value + 1}/10",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: List.generate(
                    controller.resultList!.length,
                        (index) {
                      return Container(
                        height: 5,
                        width: MediaQuery.sizeOf(context).width *0.07,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5),
                          ),
                          color: Colors.grey.shade400,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Expanded(
                    child: Text(
                      "${controller.resultList![controller.count.value]
                          .question}",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify,
                      maxLines: 1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: 50,
                  width: MediaQuery
                      .sizeOf(context)
                      .width,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                    border: Border.all(
                      color: Colors.green,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "${controller.resultList![controller.count.value]
                              .correct_answer}",
                          style: TextStyle(
                            color: Colors.green.shade800,
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            overflow: TextOverflow.ellipsis
                          ),
                          maxLines: 1,
                        ),
                      ),
                      Radio(
                        value: 1,
                        groupValue: 1,
                        onChanged: (value) {},
                        fillColor: WidgetStatePropertyAll(
                          Colors.green.shade800,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: MediaQuery
                      .sizeOf(context)
                      .width,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "${controller.resultList![controller.count.value]
                              .incorrect_answer![0]}",
                          style: const TextStyle(
                            color: Colors.white54,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis
                          ),
                          maxLines: 1,
                        ),
                      ),
                      Radio(
                        value: 0,
                        groupValue: 1,
                        onChanged: (value) {},
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: MediaQuery
                      .sizeOf(context)
                      .width,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "${controller.resultList![controller.count.value]
                              .incorrect_answer![1]}",
                          style: const TextStyle(
                            color: Colors.white54,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis
                          ),
                          maxLines: 1,
                        ),
                      ),
                      Radio(
                        value: 0,
                        groupValue: 1,
                        onChanged: (value) {},
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: MediaQuery
                      .sizeOf(context)
                      .width,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "${controller.resultList![controller.count.value]
                              .incorrect_answer![2]}",
                          style: const TextStyle(
                            color: Colors.white54,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis
                          ),
                          maxLines: 1,
                        ),
                      ),
                      Radio(
                        value: 0,
                        groupValue: 1,
                        onChanged: (value) {},
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Icon(
                            Icons.login,
                            color: Colors.white70,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Quit Quize",
                            style: TextStyle(
                                color: Colors.white70, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        controller.countData();
                        print(
                            "=================== counter ${controller.count
                                .value}");
                        if (controller.count.value == 9) {
                          Get.toNamed("/result");
                           controller.count.value = 0;
                          print("====================== count home${controller.count.value}");

                        }
                      },
                      child: Container(
                        height: MediaQuery
                            .sizeOf(context)
                            .height * 0.06,
                        width: MediaQuery
                            .sizeOf(context)
                            .width * 0.45,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color(0xff08d0f3),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Next",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                    // ElevatedButton(
                    //   onPressed: () {},
                    //   child: const Text("Next"),
                    // )
                  ],
                )
              ],
            ),
          );
        },)
    );
  }
}
// child: Padding(
//   padding: const EdgeInsets.all(15),
//   child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       const SizedBox(
//         height: 40,
//       ),
//       const Text(
//         "Mathematics Quize",
//         style: TextStyle(color: Color(0xff343a50), fontSize: 20),
//       ),
//       const SizedBox(
//         height: 10,
//       ),
//       const Text(
//         "Question 06/20",
//         style: TextStyle(color: Colors.white, fontSize: 25),
//       ),
//       const SizedBox(
//         height: 10,
//       ),
//       Row(
//         children: List.generate(
//           14,
//           (index) {
//             return Container(
//               height: 5,
//               width: 15,
//               padding: const EdgeInsets.all(10),
//               margin: const EdgeInsets.all(5),
//               decoration: BoxDecoration(
//                 borderRadius: const BorderRadius.all(
//                   Radius.circular(5),
//                 ),
//                 color: Colors.grey.shade400,
//               ),
//             );
//           },
//         ),
//       ),
//       const SizedBox(
//         height: 10,
//       ),
//       const Padding(
//         padding: EdgeInsets.all(15),
//         child: Text(
//           "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
//           " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
//           " when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
//           style: TextStyle(
//               color: Colors.white,
//               fontSize: 16,
//               fontWeight: FontWeight.bold),
//           textAlign: TextAlign.justify,
//         ),
//       ),
//       const SizedBox(
//         height: 50,
//       ),
//       Container(
//         height: 50,
//         width: MediaQuery.sizeOf(context).width,
//         alignment: Alignment.center,
//         padding: const EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           borderRadius: const BorderRadius.all(
//             Radius.circular(5),
//           ),
//           border: Border.all(
//             color: Colors.green,
//           ),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               "Option A",
//               style: TextStyle(
//                 color: Colors.green.shade800,
//                 fontSize: 18,
//                 fontWeight: FontWeight.w900,
//               ),
//             ),
//             Radio(
//               value: 1,
//               groupValue: 1,
//               onChanged: (value) {},
//               fillColor: WidgetStatePropertyAll(
//                 Colors.green.shade800,
//               ),
//             )
//           ],
//         ),
//       ),
//       const SizedBox(
//         height: 10,
//       ),
//       Container(
//         height: 50,
//         width: MediaQuery.sizeOf(context).width,
//         alignment: Alignment.center,
//         padding: const EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           borderRadius: const BorderRadius.all(
//             Radius.circular(5),
//           ),
//           border: Border.all(
//             color: Colors.white,
//           ),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             const Text(
//               "Option B",
//               style: TextStyle(
//                 color: Colors.white54,
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Radio(
//               value: 0,
//               groupValue: 1,
//               onChanged: (value) {},
//             )
//           ],
//         ),
//       ),
//       const SizedBox(
//         height: 10,
//       ),
//       Container(
//         height: 50,
//         width: MediaQuery.sizeOf(context).width,
//         alignment: Alignment.center,
//         padding: const EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           borderRadius: const BorderRadius.all(
//             Radius.circular(5),
//           ),
//           border: Border.all(
//             color: Colors.white,
//           ),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             const Text(
//               "Option C",
//               style: TextStyle(
//                 color: Colors.white54,
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Radio(
//               value: 0,
//               groupValue: 1,
//               onChanged: (value) {},
//             )
//           ],
//         ),
//       ),
//       const SizedBox(
//         height: 10,
//       ),
//       Container(
//         height: 50,
//         width: MediaQuery.sizeOf(context).width,
//         alignment: Alignment.center,
//         padding: const EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           borderRadius: const BorderRadius.all(
//             Radius.circular(5),
//           ),
//           border: Border.all(
//             color: Colors.white,
//           ),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             const Text(
//               "Option D",
//               style: TextStyle(
//                 color: Colors.white54,
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Radio(
//               value: 0,
//               groupValue: 1,
//               onChanged: (value) {},
//             )
//           ],
//         ),
//       ),
//       const Spacer(),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           TextButton(
//             onPressed: () {},
//             child: const Row(
//               children: [
//                 Icon(
//                   Icons.login,
//                   color: Colors.white70,
//                 ),
//                 SizedBox(
//                   width: 8,
//                 ),
//                 Text(
//                   "Quit Quize",
//                   style: TextStyle(color: Colors.white70, fontSize: 16),
//                 ),
//               ],
//             ),
//           ),
//           InkWell(
//             onTap: () {
//               Get.toNamed("/result");
//             },
//             child: Container(
//               height: MediaQuery.sizeOf(context).height * 0.06,
//               width: MediaQuery.sizeOf(context).width * 0.45,
//               alignment: Alignment.center,
//               decoration: const BoxDecoration(
//                 color: Color(0xff08d0f3),
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(10),
//                 ),
//               ),
//               child: const Text(
//                 "Next",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           )
//           // ElevatedButton(
//           //   onPressed: () {},
//           //   child: const Text("Next"),
//           // )
//         ],
//       )
//     ],
//   ),
// ),


/*
*   FutureBuilder(
        future: controller.model,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text("${snapshot.hasError}");
          } else if (snapshot.hasData) {
            QuizeModel? model = snapshot.data;

            controller.resultList!.clear();
            if(model!=null)
              {
                controller.resultList!.addAll(model.resultsList!);
                print(" ============================ question data${controller.resultList![0].question}");
                print(" ============================ question data${controller.resultList![1].question}");
                print(" ============================ question data${controller.resultList![2].question}");
                print(" ============================ question data${controller.resultList![3].question}");
                // controller.addData();
                // model.resultsList!.clear();
              // }
            // else if(model == null)
            //   {
            //     return Text("No data found");
            //   }
            // else if(controller.resultList!.isEmpty)
            //   {
            //     return Text("No data found");
            //   }
            // else
            //   {
                return Obx(
                  () =>  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          "Mathematics Quize",
                          style: TextStyle(color: Color(0xff343a50), fontSize: 20),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                         Text(
                          "Question ${controller.count.value+1}/10",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: List.generate(
                            controller.resultList!.length,
                                (index) {
                              return Container(
                                height: 5,
                                width: 15,
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  color: Colors.grey.shade400,
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                         Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            "${controller.resultList![controller.count.value].question}",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery.sizeOf(context).width,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                            border: Border.all(
                              color: Colors.green,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${controller.resultList![controller.count.value].correct_answer}",
                                style: TextStyle(
                                  color: Colors.green.shade800,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Radio(
                                value: 1,
                                groupValue: 1,
                                onChanged: (value) {},
                                fillColor: WidgetStatePropertyAll(
                                  Colors.green.shade800,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery.sizeOf(context).width,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               Text(
                                "${controller.resultList![controller.count.value].incorrect_answer![0]}",
                                style: const TextStyle(
                                  color: Colors.white54,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Radio(
                                value: 0,
                                groupValue: 1,
                                onChanged: (value) {},
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery.sizeOf(context).width,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               Text(
                                "${controller.resultList![controller.count.value].incorrect_answer![1]}",
                                style: const TextStyle(
                                  color: Colors.white54,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Radio(
                                value: 0,
                                groupValue: 1,
                                onChanged: (value) {},
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery.sizeOf(context).width,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               Text(
                                "${controller.resultList![controller.count.value].incorrect_answer![2]}",
                                style: const TextStyle(
                                  color: Colors.white54,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Radio(
                                value: 0,
                                groupValue: 1,
                                onChanged: (value) {},
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.login,
                                    color: Colors.white70,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Quit Quize",
                                    style:
                                    TextStyle(color: Colors.white70, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                controller.countData();
                                print("=================== counter ${controller.count.value}");
                                if(controller.count.value == 9) {
                                  Get.toNamed("/result");
                                  controller.count.value == 0;
                                }
                              },
                              child: Container(
                                height: MediaQuery.sizeOf(context).height * 0.06,
                                width: MediaQuery.sizeOf(context).width * 0.45,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  color: Color(0xff08d0f3),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: const Text(
                                  "Next",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                            // ElevatedButton(
                            //   onPressed: () {},
                            //   child: const Text("Next"),
                            // )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }
          }
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          );
        },
        // child: Padding(
        //   padding: const EdgeInsets.all(15),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       const SizedBox(
        //         height: 40,
        //       ),
        //       const Text(
        //         "Mathematics Quize",
        //         style: TextStyle(color: Color(0xff343a50), fontSize: 20),
        //       ),
        //       const SizedBox(
        //         height: 10,
        //       ),
        //       const Text(
        //         "Question 06/20",
        //         style: TextStyle(color: Colors.white, fontSize: 25),
        //       ),
        //       const SizedBox(
        //         height: 10,
        //       ),
        //       Row(
        //         children: List.generate(
        //           14,
        //           (index) {
        //             return Container(
        //               height: 5,
        //               width: 15,
        //               padding: const EdgeInsets.all(10),
        //               margin: const EdgeInsets.all(5),
        //               decoration: BoxDecoration(
        //                 borderRadius: const BorderRadius.all(
        //                   Radius.circular(5),
        //                 ),
        //                 color: Colors.grey.shade400,
        //               ),
        //             );
        //           },
        //         ),
        //       ),
        //       const SizedBox(
        //         height: 10,
        //       ),
        //       const Padding(
        //         padding: EdgeInsets.all(15),
        //         child: Text(
        //           "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
        //           " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
        //           " when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        //           style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 16,
        //               fontWeight: FontWeight.bold),
        //           textAlign: TextAlign.justify,
        //         ),
        //       ),
        //       const SizedBox(
        //         height: 50,
        //       ),
        //       Container(
        //         height: 50,
        //         width: MediaQuery.sizeOf(context).width,
        //         alignment: Alignment.center,
        //         padding: const EdgeInsets.all(10),
        //         decoration: BoxDecoration(
        //           borderRadius: const BorderRadius.all(
        //             Radius.circular(5),
        //           ),
        //           border: Border.all(
        //             color: Colors.green,
        //           ),
        //         ),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Text(
        //               "Option A",
        //               style: TextStyle(
        //                 color: Colors.green.shade800,
        //                 fontSize: 18,
        //                 fontWeight: FontWeight.w900,
        //               ),
        //             ),
        //             Radio(
        //               value: 1,
        //               groupValue: 1,
        //               onChanged: (value) {},
        //               fillColor: WidgetStatePropertyAll(
        //                 Colors.green.shade800,
        //               ),
        //             )
        //           ],
        //         ),
        //       ),
        //       const SizedBox(
        //         height: 10,
        //       ),
        //       Container(
        //         height: 50,
        //         width: MediaQuery.sizeOf(context).width,
        //         alignment: Alignment.center,
        //         padding: const EdgeInsets.all(10),
        //         decoration: BoxDecoration(
        //           borderRadius: const BorderRadius.all(
        //             Radius.circular(5),
        //           ),
        //           border: Border.all(
        //             color: Colors.white,
        //           ),
        //         ),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             const Text(
        //               "Option B",
        //               style: TextStyle(
        //                 color: Colors.white54,
        //                 fontSize: 18,
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //             Radio(
        //               value: 0,
        //               groupValue: 1,
        //               onChanged: (value) {},
        //             )
        //           ],
        //         ),
        //       ),
        //       const SizedBox(
        //         height: 10,
        //       ),
        //       Container(
        //         height: 50,
        //         width: MediaQuery.sizeOf(context).width,
        //         alignment: Alignment.center,
        //         padding: const EdgeInsets.all(10),
        //         decoration: BoxDecoration(
        //           borderRadius: const BorderRadius.all(
        //             Radius.circular(5),
        //           ),
        //           border: Border.all(
        //             color: Colors.white,
        //           ),
        //         ),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             const Text(
        //               "Option C",
        //               style: TextStyle(
        //                 color: Colors.white54,
        //                 fontSize: 18,
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //             Radio(
        //               value: 0,
        //               groupValue: 1,
        //               onChanged: (value) {},
        //             )
        //           ],
        //         ),
        //       ),
        //       const SizedBox(
        //         height: 10,
        //       ),
        //       Container(
        //         height: 50,
        //         width: MediaQuery.sizeOf(context).width,
        //         alignment: Alignment.center,
        //         padding: const EdgeInsets.all(10),
        //         decoration: BoxDecoration(
        //           borderRadius: const BorderRadius.all(
        //             Radius.circular(5),
        //           ),
        //           border: Border.all(
        //             color: Colors.white,
        //           ),
        //         ),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             const Text(
        //               "Option D",
        //               style: TextStyle(
        //                 color: Colors.white54,
        //                 fontSize: 18,
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //             Radio(
        //               value: 0,
        //               groupValue: 1,
        //               onChanged: (value) {},
        //             )
        //           ],
        //         ),
        //       ),
        //       const Spacer(),
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           TextButton(
        //             onPressed: () {},
        //             child: const Row(
        //               children: [
        //                 Icon(
        //                   Icons.login,
        //                   color: Colors.white70,
        //                 ),
        //                 SizedBox(
        //                   width: 8,
        //                 ),
        //                 Text(
        //                   "Quit Quize",
        //                   style: TextStyle(color: Colors.white70, fontSize: 16),
        //                 ),
        //               ],
        //             ),
        //           ),
        //           InkWell(
        //             onTap: () {
        //               Get.toNamed("/result");
        //             },
        //             child: Container(
        //               height: MediaQuery.sizeOf(context).height * 0.06,
        //               width: MediaQuery.sizeOf(context).width * 0.45,
        //               alignment: Alignment.center,
        //               decoration: const BoxDecoration(
        //                 color: Color(0xff08d0f3),
        //                 borderRadius: BorderRadius.all(
        //                   Radius.circular(10),
        //                 ),
        //               ),
        //               child: const Text(
        //                 "Next",
        //                 style: TextStyle(
        //                   color: Colors.white,
        //                   fontSize: 18,
        //                   fontWeight: FontWeight.bold,
        //                 ),
        //               ),
        //             ),
        //           )
        //           // ElevatedButton(
        //           //   onPressed: () {},
        //           //   child: const Text("Next"),
        //           // )
        //         ],
        //       )
        //     ],
        //   ),
        // ),
      ),*/
