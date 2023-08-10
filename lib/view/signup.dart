import 'package:flutter/material.dart';
import 'package:quiz_hive/routes/myroutes.dart';
import 'package:quiz_hive/view/components/profile_button.dart';
import 'package:quiz_hive/view/components/custom_textformfield_pass.dart';
import 'package:quiz_hive/view/components/custom_textformfield_username.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final GlobalKey<FormState> _fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Form(
          key: _fromKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const SizedBox(
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('assets/images/p3.jpg'),
                        backgroundColor: Colors.transparent,
                      ),
                    ), //Container
                    Positioned(
                      top: 70,
                      left: 30,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: RawMaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context, MyRoutes.profile);
                          },
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                color: Colors.black),
                            height: 42,
                            width: 42,
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ), //Profile Picture Selected

              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: CustomTextFieldUsername(
                  width: MediaQuery.of(context).size.width / 1.8,
                  controller: userController,
                  label: 'Username',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFieldPassword(
                  width: MediaQuery.of(context).size.width / 1.8,
                  controller: passController,
                  label: 'Password',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(
                    title: 'submit',
                    onPressed: () {
                      if (_fromKey.currentState!.validate()) {
                        Navigator.pushNamed(context, MyRoutes.login);
                      } else {
                        return 'not response';
                      }
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
