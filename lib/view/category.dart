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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomCardView(
                  onPressed: () {},
                  title: 'Math',
                  image: 'assets/images/p3.jpg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomCardView(
                  onPressed: () {},
                  title: 'Math',
                  image: 'assets/images/p3.jpg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
