import 'package:flutter/material.dart';
import 'package:quiz_hive/view/pages/auth/login.dart';
import 'package:quiz_hive/view/pages/auth/signup.dart';
import 'package:quiz_hive/view/pages/category/category.dart';
import 'package:quiz_hive/view/pages/home/home_page.dart';
import 'package:quiz_hive/view/pages/profiles/profile.dart';
import 'package:quiz_hive/view/pages/question/questions.dart';

class MyRoutes {
  static const String home = '/home_page';
  static const String login = '/login_page';
  static const String signup = '/signup_page';
  static const String question = 'question_page';
  static const String category = '/category_page';
  static const String profile = '/profile_page';
  static Map<String, Widget Function(BuildContext)> routes = {
    home: (context) => const MyHomePage(title: "Welcome"),
    login: (context) => const Login(),
    signup: (context) => const Signup(),
    category: (context) => const Categories(),
    question: (context) => const Questions(),
    profile: (context) => const Profile(),
  };
}
