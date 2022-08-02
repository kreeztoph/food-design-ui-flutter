// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BookmarkedMeals extends StatefulWidget {
  const BookmarkedMeals({Key? key}) : super(key: key);

  @override
  State<BookmarkedMeals> createState() => _BookmarkedMealsState();
}

class _BookmarkedMealsState extends State<BookmarkedMeals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Bookmarked Meals',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.cancel_outlined,
                size: MediaQuery.of(context).size.height / 8,
                color: Colors.red,
              ),
              Text(
                'You have no bookmarked meals',
                style: TextStyle(fontSize: 16),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
