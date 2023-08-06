import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFieldPassword extends StatefulWidget {
  CustomTextFieldPassword(
      {super.key,
      this.width,
      this.height,
      this.hint,
      this.label,
      required this.controller});
  final String? label, hint;
  final double? width, height;

  TextEditingController controller = TextEditingController();

  @override
  State<CustomTextFieldPassword> createState() =>
      _CustomTextFieldPasswordState();
}

class _CustomTextFieldPasswordState extends State<CustomTextFieldPassword> {
  bool obscureText = false;
  bool showIcon = false;
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
              obscureText: obscureText,
              style: const TextStyle(color: Colors.white),
              controller: widget.controller,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'dfdfsdfsdf';
                }
                //using regular expression
                if (!RegExp(r'^[1-9]').hasMatch(value)) {
                  return "Please enter a valid pass";
                }
                // the email is valid
                return null;
              },
              decoration: InputDecoration(
                hintText: widget.hint,
                labelText: widget.label,
                suffixIcon: IconButton(
                  icon: changeIcon(),
                  onPressed: () {
                    setState(
                      () {
                        showIcon = !showIcon;
                        obscureText = !obscureText;
                      },
                    );
                  },
                ),
                enabledBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
                errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent)),
                helperText: '@H3289!()*',
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
              maxLines: 1,
              maxLength: 8,
            ),
          ),
        ],
      ),
    );
  }

  Icon changeIcon() {
    if (showIcon) {
      showIcon == false;
      obscureText == false;
      return const Icon(
        Icons.visibility,
        color: Colors.white,
      );
    } else {
      showIcon == false;
      obscureText == false;
      return const Icon(
        Icons.visibility_off,
        color: Colors.white,
      );
    }
  }
}
