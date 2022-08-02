// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final _screensize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Notifications',
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
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: _screensize.height / 20,
                  width: _screensize.width / 1.5,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      label: Text(
                        'Search food...',
                        style: TextStyle(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.search_outlined,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: _screensize.width / 40,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: _screensize.height / 20,
                  width: _screensize.width / 8,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.filter_list,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: _screensize.height / 24,
            ),
            Row(
              children: [
                Container(
                  child: Text(
                    "Found 10 results",
                  ),
                  width: _screensize.width / 2,
                  height: _screensize.height / 10,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
