// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, no_leading_underscores_for_local_identifiers, unused_local_variable

import 'package:flutter/material.dart';
import 'package:food_app_ui/presentation/screens/forgot_password.dart';
import 'package:food_app_ui/presentation/screens/homepage.dart';
import 'package:food_app_ui/presentation/screens/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isobscure = true;
  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return SafeArea(
      //Scaffold is used to occupy the whole page
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //app logo
                  Column(
                    children: [
                      Image.asset(
                        'assets/logo.jpg',
                        height: 250,
                      ),
                      Text(
                        "Novia Treat",
                        style: GoogleFonts.pacifico(
                          textStyle: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent[700],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  //email
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          label: Text(
                            'Email',
                            style: TextStyle(color: Colors.red),
                          ),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.red,
                          ),
                        ),
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //password
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      child: TextField(
                        obscureText: _isobscure,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.lock_clock_outlined,
                            color: Colors.red,
                          ),
                          label: Text(
                            'Password',
                            style: TextStyle(color: Colors.red),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isobscure
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              setState(() {
                                _isobscure = !_isobscure;
                              });
                            },
                          ),
                        ),
                        textInputAction: TextInputAction.done,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //login button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ForgotPassword(),
                              ),
                            );
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.redAccent[700],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  //login button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      minimumSize: Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //text for dont have an account
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      VerticalDivider(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign Up Now",
                          style: TextStyle(
                            color: Colors.redAccent[700],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
