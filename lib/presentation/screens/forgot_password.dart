// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                //logo and name
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
                Text(
                  "Provide your email to recover your password",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                //Name or Email field
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
                //Button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    minimumSize: Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    'Recover',
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
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Remember Password?"),
                    VerticalDivider(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Go back to login",
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
          )),
        ),
      ),
    );
  }
}
