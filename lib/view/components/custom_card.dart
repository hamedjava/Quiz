import 'package:flutter/material.dart';

class CustomCardView extends StatefulWidget {
  CustomCardView(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.subTitle,
      required this.titleCount,
      required this.image});
  final String title, subTitle, titleCount;
  final String image;
  Function() onPressed;
  @override
  State<CustomCardView> createState() => _CustomCardViewState();
}

class _CustomCardViewState extends State<CustomCardView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Card(
        child: RawMaterialButton(
          onPressed: widget.onPressed,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -45,
                left: -155,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset(
                    widget.image,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 6,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              widget.titleCount,
                              style: const TextStyle(color: Colors.black54),
                            ),
                          ),
                          Text(
                            widget.subTitle,
                            style: const TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    ],
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
