import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffedf3f6),
      // appBar: AppBar(
      //   title: const Text("Quize App"),
      // ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(0),
                decoration: const BoxDecoration(
                  // image: DecorationImage(image: AssetImage("")),
                  color: Color(0xff2a2b31),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
              ),
            ],
          ),
          Transform.scale(
             alignment: Alignment(0, -10),
            scale: 0.9,
            // scaleX: 0.5,
            // scaleY: 0.5,
            child: Container(
              height: 250,
              width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/ad.png"),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.all(Radius.circular(15))
              ),
            ),
          )
          // Container(
          //   height: 100,
          //   width: MediaQuery.sizeOf(context).width,
          //   decoration: const BoxDecoration(
          //       image: DecorationImage(
          //         // image: AssetImage(""),
          //       ),
          //       ),
          // )
        ],
      ),
    );
  }
}
