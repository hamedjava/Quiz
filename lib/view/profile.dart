import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:quiz_hive/view/components/custom_empty_card_view.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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

          // center card view
          Align(
            alignment: Alignment.center,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: const BorderSide(style: BorderStyle.none)),
              elevation: 8,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.height / 3.8,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              height: MediaQuery.of(context).size.height / 6,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 8.0),
                                            child: SizedBox(
                                              width: 10,
                                              height: 10,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        300.0),
                                                child: Container(
                                                  color: Colors.purple,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '100 %',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 50.0),
                                        child: Text('Completation'),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 30.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: SizedBox(
                                            width: 10,
                                            height: 10,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(300.0),
                                              child: Container(
                                                color: Colors.purple,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '13',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12.0),
                                    child: Text('Correct'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              height: MediaQuery.of(context).size.height / 6,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 8.0),
                                            child: SizedBox(
                                              width: 10,
                                              height: 10,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        300.0),
                                                child: Container(
                                                  color: Colors.purple,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '20',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 85.0),
                                        child: Text('Total Question'),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: SizedBox(
                                          width: 10,
                                          height: 10,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(300.0),
                                            child: Container(
                                              color: Colors.purple,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '07',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 35.0),
                                    child: Text('Wrong'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // bottom iconButtons
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.home,
                          color: Colors.red,
                        ),
                        color: Colors.black,
                        iconSize: 42,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.start,
                          color: Colors.red,
                        ),
                        color: Colors.black,
                        iconSize: 42,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.home,
                          color: Colors.red,
                        ),
                        color: Colors.black,
                        iconSize: 42,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.account_circle,
                          color: Colors.red,
                        ),
                        color: Colors.black,
                        iconSize: 42,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.reviews,
                          color: Colors.red,
                        ),
                        color: Colors.black,
                        iconSize: 42,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.refresh,
                          color: Colors.red,
                        ),
                        color: Colors.black,
                        iconSize: 42,
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
/* default center card view
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
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
*/

/* center card view
Column(
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
*/
