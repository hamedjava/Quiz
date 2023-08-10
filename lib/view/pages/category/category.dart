import 'package:flutter/material.dart';
import 'package:quiz_hive/view/components/custom_card.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 30),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomCardView(
                    onPressed: () {},
                    title: 'Math',
                    subTitle: 'question',
                    titleCount: '50',
                    image: 'assets/images/sport.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomCardView(
                    onPressed: () {},
                    title: 'Math',
                    subTitle: 'question',
                    titleCount: '50',
                    image: 'assets/images/chemistry.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomCardView(
                    onPressed: () {},
                    title: 'Math',
                    subTitle: 'question',
                    titleCount: '50',
                    image: 'assets/images/map.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomCardView(
                    onPressed: () {},
                    title: 'Math',
                    subTitle: 'question',
                    titleCount: '50',
                    image: 'assets/images/math.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomCardView(
                    onPressed: () {},
                    title: 'Math',
                    subTitle: 'question',
                    titleCount: '50',
                    image: 'assets/images/documentary.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomCardView(
                    onPressed: () {},
                    title: 'Math',
                    subTitle: 'question',
                    titleCount: '50',
                    image: 'assets/images/sport.png',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
