import 'package:flutter/material.dart';

class CustomCardView extends StatefulWidget {
  CustomCardView(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.image});
  final String title;
  final String image;
  Function() onPressed;
  @override
  State<CustomCardView> createState() => _CustomCardViewState();
}

class _CustomCardViewState extends State<CustomCardView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.white),
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.width / 2.3,
      child: RawMaterialButton(
        onPressed: widget.onPressed,
        child: Card(
          color: Colors.white,
          elevation: 2,
          shadowColor: Colors.grey[600],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.title,
                  style: const TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  widget.image,
                  width: 200,
                  height: 150,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
