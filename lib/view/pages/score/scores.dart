import 'package:flutter/material.dart';
import 'package:quiz_hive/view/pages/score/custom_stage1.dart';
import 'package:quiz_hive/view/pages/score/custom_stage2.dart';
import 'package:quiz_hive/view/pages/score/custom_stage3.dart';

class Scores extends StatefulWidget {
  const Scores({super.key});

  @override
  State<Scores> createState() => _ScoresState();
}

class _ScoresState extends State<Scores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(35),
            topLeft: Radius.circular(35),
          ),
        ),
        width: double.infinity,
        height: 250,
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 15,
            left: MediaQuery.of(context).size.width * 0.02,
            right: MediaQuery.of(context).size.width * 0.02,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                color: Colors.purple,
              ),
              width: MediaQuery.of(context).size.width / 1.3,
              height: MediaQuery.of(context).size.height / 1.8,
            ),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width * 0.8,
            top: MediaQuery.of(context).size.height * 0.05,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.8,
            top: MediaQuery.of(context).size.height * 0.05,
            child: Container(
              width: 42,
              height: 42,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child: RawMaterialButton(
                onPressed: () {},
                child: const CircleAvatar(
                  backgroundImage: NetworkImage('assets/images/p3.jpg'),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 9,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 42,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Today',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Mountly',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'All Times',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ), //menu
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.200,
            left: MediaQuery.of(context).size.width / 3,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('assets/images/p3.jpg'),
                    ),
                    ClipPath(
                      clipper: CustomStage2(),
                      child: Container(
                        height: 205,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurStyle: BlurStyle.inner, blurRadius: 55)
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 80.0, left: 20),
                          child: Text(
                            '2',
                            style: TextStyle(color: Colors.white, fontSize: 90),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('assets/images/p3.jpg'),
                    ),
                    ClipPath(
                      clipper: CustomStage1(),
                      child: Container(
                        height: 205,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurStyle: BlurStyle.inner, blurRadius: 100)
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 52.0, left: 6),
                          child: Text(
                            '1',
                            style:
                                TextStyle(color: Colors.white, fontSize: 130),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('assets/images/p3.jpg'),
                    ),
                    ClipPath(
                      clipper: CustomStage3(),
                      child: Container(
                        height: 205,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurStyle: BlurStyle.inner, blurRadius: 100)
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 110.0, left: 10),
                          child: Text(
                            '3',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 70,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
