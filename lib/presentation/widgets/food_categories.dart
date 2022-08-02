// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

Widget buildFoodCategories(BuildContext context) {
  final _screensize = MediaQuery.of(context).size;
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(10),
    ),
    height: _screensize.height / 20,
    width: _screensize.width / 3,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            width: _screensize.width / 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.ac_unit_sharp),
          ),
        ),
        Container(
          width: _screensize.width / 6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: Text('Fast Food')),
        ),
      ],
    ),
  );
}
