import 'package:flutter/material.dart';
import 'package:quiz_hive/routes/myroutes.dart';
import 'package:quiz_hive/view/components/custom_button.dart';
import 'package:quiz_hive/view/components/custom_textformfield_pass.dart';
import 'package:quiz_hive/view/components/custom_textformfield_username.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white),
          ),
        ),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Quiz',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Form(
            key: _fromKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 30),
                  child: Container(
                    color: Colors.transparent,
                    width: 150,
                    height: 150,
                    child: Image.network(
                      'assets/images/login.png',
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextFieldUsername(
                      width: MediaQuery.of(context).size.width / 1.6,
                      height: 42,
                      label: "Username",
                      controller: usernameController),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextFieldPassword(
                        width: MediaQuery.of(context).size.width / 1.6,
                        height: 42,
                        label: "Password",
                        controller: passwordController)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomButton(
                      title: "Submit",
                      onPressed: () {
                        if (_fromKey.currentState!.validate()) {
                          Navigator.pushNamed(context, MyRoutes.home);
                        } else {
                          return "please fill all fields";
                        }
                      }),
                ),
              ],
            )),
      ),
    );
  }
}
