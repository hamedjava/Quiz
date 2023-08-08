import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFieldUsername extends StatefulWidget {
  CustomTextFieldUsername(
      {super.key,
      this.width,
      this.height,
      this.label,
      this.hint,
      required this.controller});
  final String? label, hint;
  final double? width, height;
  TextEditingController controller = TextEditingController();

  @override
  State<CustomTextFieldUsername> createState() =>
      _CustomTextFieldUsernameState();
}

class _CustomTextFieldUsernameState extends State<CustomTextFieldUsername> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: widget.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              controller: widget.controller,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Something';
                }

                // using regular expression
                if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                  return "Please enter a valid email address";
                }

                // the email is valid
                return null;
              },
              decoration: InputDecoration(
                hintText: widget.hint,
                labelText: widget.label,
                enabledBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
                errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent)),
                helperText: 'example@gmail.com',
                helperStyle: const TextStyle(color: Colors.white),
                labelStyle: const TextStyle(color: Colors.white),
                hintStyle: const TextStyle(
                  color: Colors.white,
                ),
                border: const OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.solid,
                        color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
