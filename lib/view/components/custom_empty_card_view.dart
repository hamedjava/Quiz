import 'package:flutter/material.dart';

class CustomEmptyCardView extends StatefulWidget {
  CustomEmptyCardView(
      {super.key,
      required this.onPressed,
      this.child,
      required this.width,
      required this.height,
      this.backgroundColor});
  final double width, height;
  final Color? backgroundColor;
  Function() onPressed;
  final Widget? child;
  @override
  State<CustomEmptyCardView> createState() => _CustomEmptyCardViewState();
}

class _CustomEmptyCardViewState extends State<CustomEmptyCardView> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 50,
      color: widget.backgroundColor,
      child: RawMaterialButton(
        onPressed: widget.onPressed,
        child: RawMaterialButton(
          onPressed: widget.onPressed,
          child: Container(
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.transparent),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
