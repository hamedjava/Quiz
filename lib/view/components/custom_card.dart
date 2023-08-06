import 'package:flutter/material.dart';

class CustomCardView extends StatefulWidget {
  const CustomCardView({super.key, required this.title, required this.image});
  final String title;
  final String image;
  @override
  State<CustomCardView> createState() => _CustomCardViewState();
}

class _CustomCardViewState extends State<CustomCardView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.7,
      height: 80,
      child: Card(
        color: Colors.white,
        elevation: 2,
        shadowColor: Colors.grey[600],
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.title,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            Image.asset(widget.image),
          ],
        ),
      ),
    );
  }
}
