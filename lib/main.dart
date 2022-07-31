// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app_ui/presentation/screens/login_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
