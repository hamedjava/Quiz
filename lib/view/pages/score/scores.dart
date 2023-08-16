import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quiz_hive/view/components/player_card/others_player.dart';
import 'package:quiz_hive/view/components/player_card/self_player.dart';
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
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width / 0.9,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('assets/images/p3.jpg'),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 58,
                width: MediaQuery.of(context).size.width,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
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
              Positioned(
                top: 175,
                left: (MediaQuery.sizeOf(context).width * 0.35),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('assets/images/p3.jpg'),
                    ),
                    Text(
                      'Hamed',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
              const Positioned(
                top: 145,
                left: 185,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('assets/images/p3.jpg'),
                    ),
                    Text(
                      'Hamed',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 195,
                left: (MediaQuery.sizeOf(context).width * 0.65),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('assets/images/p3.jpg'),
                    ),
                    Text(
                      'Hamed',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.250,
                left: MediaQuery.of(context).size.width / 3,
                child: Row(
                  children: [
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
                    ClipPath(
                      clipper: CustomStage1(),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 3,
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
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 270,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 18.0,
                      right: 20,
                      left: 20,
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: ListView(
                          shrinkWrap: true,
                          children: const [
                            OthersPlayer(),
                            OthersPlayer(),
                            SelfPlayer(),
                            OthersPlayer(),
                            OthersPlayer(),
                            OthersPlayer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
