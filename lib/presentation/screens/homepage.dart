// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:emojis/emojis.dart';
import 'package:food_app_ui/presentation/screens/bookmarked_meals.dart';
import 'package:food_app_ui/presentation/screens/food_detail.dart';
import 'package:food_app_ui/presentation/screens/notifications_screen.dart';
import 'package:food_app_ui/presentation/screens/order_history.dart';
import 'package:food_app_ui/presentation/screens/search_page.dart';
import 'package:food_app_ui/presentation/screens/sign_up.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final _screensize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        //to stop the FAB from pushing with the keyboard
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
          leading: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.menu_outlined,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Let's eat\nQuality food ${Emojis.faceSavoringFood}",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
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
                      onSubmitted: (value) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SearchScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                  VerticalDivider(
                    width: 10,
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
                height: 20,
              ),
              //Food categories
              Align(
                alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
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
                                child: Center(
                                    child: Text(
                                  'Fast Food',
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      VerticalDivider(
                        width: 15,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
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
                                child: Center(child: Text('Drinks')),
                              ),
                            ],
                          ),
                        ),
                      ),
                      VerticalDivider(
                        width: 15,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
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
                                child: Center(child: Text('Snacks')),
                              ),
                            ],
                          ),
                        ),
                      ),
                      VerticalDivider(
                        width: 15,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
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
                                child: Center(child: Text('Foreign')),
                              ),
                            ],
                          ),
                        ),
                      ),
                      VerticalDivider(
                        width: 15,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
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
                                child: Center(child: Text('Alcohols')),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //main display
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FoodDetailPage(),
                          ),
                        );
                      },
                      child: Container(
                        width: _screensize.width / 2.3,
                        height: _screensize.height / 2.7,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Column(children: [
                          Image.asset(
                            'assets/food1.jpg',
                            height: _screensize.height / 5,
                            width: _screensize.width / 2,
                          ),
                          SizedBox(
                            height: _screensize.height / 40,
                          ),
                          Text(
                            'Egg Pasta Sauce',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: _screensize.height / 200,
                          ),
                          Text(
                            'Spicy meal with egg',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: _screensize.height / 200,
                          ),
                          Text(
                            '${Emojis.fire} 56 Calories',
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: _screensize.height / 200,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "\$",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              Text(
                                '9.59',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          )
                        ]),
                      ),
                    ),
                    VerticalDivider(
                      width: _screensize.width / 20,
                    ),
                    Container(
                      width: _screensize.width / 2.3,
                      height: _screensize.height / 2.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.red),
                        color: Colors.white,
                      ),
                      child: Column(children: [
                        Image.asset(
                          'assets/food2.jpg',
                          height: _screensize.height / 5,
                          width: _screensize.width / 2,
                        ),
                        SizedBox(
                          height: _screensize.height / 40,
                        ),
                        Text(
                          'Egg Pasta Sauce',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: _screensize.height / 200,
                        ),
                        Text(
                          'Spicy meal with egg',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: _screensize.height / 200,
                        ),
                        Text(
                          '${Emojis.fire} 56 Calories',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: _screensize.height / 200,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "\$",
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Text(
                              '9.59',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ]),
                    ),
                    VerticalDivider(
                      width: _screensize.width / 20,
                    ),
                    Container(
                      width: _screensize.width / 2.3,
                      height: _screensize.height / 2.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.red),
                        color: Colors.white,
                      ),
                      child: Column(children: [
                        Image.asset(
                          'assets/food1.jpg',
                          height: _screensize.height / 5,
                          width: _screensize.width / 2,
                        ),
                        SizedBox(
                          height: _screensize.height / 40,
                        ),
                        Text(
                          'Egg Pasta Sauce',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: _screensize.height / 200,
                        ),
                        Text(
                          'Spicy meal with egg',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: _screensize.height / 200,
                        ),
                        Text(
                          '${Emojis.fire} 56 Calories',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: _screensize.height / 200,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "\$",
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Text(
                              '9.59',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        )
                      ]),
                    ),
                    VerticalDivider(
                      width: _screensize.width / 20,
                    ),
                    Container(
                      width: _screensize.width / 2.3,
                      height: _screensize.height / 2.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.red),
                        color: Colors.white,
                      ),
                      child: Column(children: [
                        Image.asset(
                          'assets/food2.jpg',
                          height: _screensize.height / 5,
                          width: _screensize.width / 2,
                        ),
                        SizedBox(
                          height: _screensize.height / 40,
                        ),
                        Text(
                          'Egg Pasta Sauce',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: _screensize.height / 200,
                        ),
                        Text(
                          'Spicy meal with egg',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: _screensize.height / 200,
                        ),
                        Text(
                          '${Emojis.fire} 56 Calories',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: _screensize.height / 200,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "\$",
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Text(
                              '9.59',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        )
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
                      onPressed: () {},
                      icon: Icon(
                        Icons.home_outlined,
                        size: 30,
                        color: Colors.red,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OrderHistory(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.receipt_outlined,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookmarkedMeals(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.bookmark_outline_sharp,
                        size: 30,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotificationsScreen(),
                          ),
                        );
                      },
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
