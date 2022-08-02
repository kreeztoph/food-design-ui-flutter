// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

import 'package:emojis/emojis.dart';
import 'package:flutter/material.dart';
import 'package:food_app_ui/presentation/screens/food_detail.dart';

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
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
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: _screensize.width / 120,
                    mainAxisSpacing: _screensize.height / 40,
                    shrinkWrap: true,
                    childAspectRatio: (1 / 1.5),
                    // children: List.generate(
                    //   100,
                    //   (index) {
                    //     return Center(
                    //       child: Text(
                    //         'Item $index',
                    //         style: Theme.of(context).textTheme.headline4,
                    //       ),
                    //     );
                    //   },
                    // ),
                    children: [
                      Center(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
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
                                'Chicken spicy soup',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: _screensize.height / 200,
                              ),
                              Text(
                                'Soup with chicken',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: _screensize.height / 200,
                              ),
                              Text(
                                '${Emojis.fire} 93 Calories',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: _screensize.height / 200,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
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
                                    '12.83',
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              )
                            ]),
                          ),
                        ),
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: _screensize.width / 2.3,
                            height: _screensize.height / 2.7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.red),
                              color: Colors.white,
                            ),
                            child: Column(children: [
                              Image.asset(
                                'assets/food3.jpg',
                                height: _screensize.height / 5,
                                width: _screensize.width / 2,
                              ),
                              SizedBox(
                                height: _screensize.height / 40,
                              ),
                              Text(
                                'Steak Pasta Sauce',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: _screensize.height / 200,
                              ),
                              Text(
                                'Home meal with Steak',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: _screensize.height / 200,
                              ),
                              Text(
                                '${Emojis.fire} 104 Calories',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: _screensize.height / 200,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
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
                                    '20.83',
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              )
                            ]),
                          ),
                        ),
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: _screensize.width / 2.3,
                            height: _screensize.height / 2.7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.red),
                              color: Colors.white,
                            ),
                            child: Column(children: [
                              Image.asset(
                                'assets/food4.jpg',
                                height: _screensize.height / 5,
                                width: _screensize.width / 2,
                              ),
                              SizedBox(
                                height: _screensize.height / 40,
                              ),
                              Text(
                                'Veggie piece',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: _screensize.height / 200,
                              ),
                              Text(
                                'Vegetarian style',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: _screensize.height / 200,
                              ),
                              Text(
                                '${Emojis.fire} 45 Calories',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: _screensize.height / 200,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
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
                                    '16.05',
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
                      ),
                      Center(
                        child: InkWell(
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
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: _screensize.height / 200,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
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
                      ),
                      Center(
                        child: InkWell(
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
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: _screensize.height / 200,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
