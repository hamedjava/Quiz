import 'package:flutter/material.dart';
import 'package:quiz_hive/view/pages/score/custom_stage.dart';

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
            top: 10,
            left: MediaQuery.of(context).size.width * 0.02,
            right: MediaQuery.of(context).size.width * 0.02,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.purple,
              ),
              width: MediaQuery.of(context).size.width / 1.3,
              height: MediaQuery.of(context).size.height / 2.2,
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
            left: MediaQuery.of(context).size.width * 0.1,
            top: MediaQuery.of(context).size.height / 7,
            child: const Text(
              'Today',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.3,
            top: MediaQuery.of(context).size.height / 6.4,
            child: const Text(
              'mounth',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.5,
            top: MediaQuery.of(context).size.height / 6.4,
            child: const Text(
              'All Time',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.150,
            right: MediaQuery.of(context).size.width * 0.02,
            child: ClipPath(
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 205,
                color: Colors.red.withOpacity(0.6),
                child: Padding(
                  padding: const EdgeInsets.only(top: 52.0, left: 30),
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.white, fontSize: 120),
                  ),
                ),
              ),
              clipper: CustomStage(),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.150,
            right: MediaQuery.of(context).size.width * 0.09,
            child: ClipPath(
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 205,
                color: Colors.red.withOpacity(0.6),
                child: Padding(
                  padding: const EdgeInsets.only(top: 52.0, left: 30),
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.white, fontSize: 120),
                  ),
                ),
              ),
              clipper: CustomStage(),
            ),
          ),
        ],
      ),
    );
  }
}
