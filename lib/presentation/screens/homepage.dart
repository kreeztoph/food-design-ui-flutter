// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:emojis/emojis.dart';
import 'package:food_app_ui/presentation/screens/sign_up.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
          leading: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.menu_outlined,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Hello',
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 10,
            ),
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
        )),
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {},
          child: Icon(Icons.shopping_bag_outlined),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.white,
          child: IconTheme(
            data: IconThemeData(color: Colors.grey.shade300),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.home_outlined,
                        size: 30,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.library_books_outlined,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark_outline_sharp,
                        size: 30,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_outlined,
                        size: 30,
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
