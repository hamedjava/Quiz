import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 10,
            left: MediaQuery.of(context).size.width * 0.04,
            right: MediaQuery.of(context).size.width * 0.04,
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
            top: 30,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white.withOpacity(0.1),
                ),
                width: 200,
                height: 200,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(300.0),
                        child: Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: const Color.fromARGB(255, 255, 255, 255)
                                  .withOpacity(0.2)),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(300.0),
                        child: Container(
                          width: 170,
                          height: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: const Color.fromARGB(255, 255, 255, 255)
                                  .withOpacity(0.3)),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(300.0),
                        child: Container(
                          width: 160,
                          height: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: const Color.fromARGB(255, 255, 255, 255)
                                  .withOpacity(0.4)),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(300.0),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.blue.withOpacity(0.8),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Your Score',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 2.0),
                                    child: Text(
                                      '150',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 22),
                                    ),
                                  ),
                                  Text(
                                    'Pt',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                backgroundBlendMode: BlendMode.colorDodge,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 6,
                    color: Colors.grey.withOpacity(0.8),
                    spreadRadius: 2,
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width / 1.4,
              height: MediaQuery.of(context).size.height / 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 10,
                                  height: 10,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(300.0),
                                    child: Container(
                                      color: Colors.purple,
                                    ),
                                  ),
                                ),
                              ),
                              const Text(
                                '100 %',
                                style: TextStyle(
                                  color: Colors.purple,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'Completation',
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 10,
                                  height: 10,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(300.0),
                                    child: Container(
                                      color: Colors.purple,
                                    ),
                                  ),
                                ),
                              ),
                              const Text(
                                '20',
                                style: TextStyle(color: Colors.purple),
                              ),
                            ],
                          ),
                          const Text('total question'),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 10,
                                  height: 10,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(300.0),
                                    child: Container(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ),
                              const Text(
                                '13',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                          const Text(
                            'Correct',
                            style: TextStyle(color: Colors.black87),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 10,
                                  height: 10,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(300.0),
                                    child: Container(
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ),
                              const Text(
                                '07',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                          const Text(
                            'Wrong',
                            style: TextStyle(color: Colors.black87),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
