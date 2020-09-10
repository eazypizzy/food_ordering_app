import 'package:flutter/material.dart';
import 'package:food_ordering_app/src/widgets/bottom_nav.dart';
import 'package:food_ordering_app/src/widgets/category.dart';
import 'package:food_ordering_app/src/widgets/widgets.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'What would you like to eat?',
                    ),
                    Stack(children: [
                      IconButton(
                        icon: Icon(Icons.notifications_none),
                        onPressed: () {},
                      ),
                      Positioned(
                        right: 13,
                        top: 12,
                        child: Container(
                          alignment: Alignment.center,
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.red),
                          child: Text(
                            '0',
                            style: TextStyle(color: Colors.white, fontSize: 6),
                          ),
                        ),
                      )
                    ])
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.grey, offset: Offset(2, 2), blurRadius: 3)
                ]),
                child: ListTile(
                  leading: Icon(Icons.search, color: Colors.red),
                  title: TextField(
                      decoration: InputDecoration(
                          hintText: 'Find food and restaurants',
                          border: InputBorder.none)),
                  trailing: Icon(Icons.filter_list, color: Colors.red),
                ),
              ),
            ),
            SizedBox(height: 10),
            CategoryTile(),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: CustomText(text: 'Featured', color: Colors.grey),
            ),
            Featured(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: CustomText(text: 'Popular', color: Colors.grey),
            ),
            Stack(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/images/pizza.jpg')),
              ),
              Positioned.fill(
                top: -170,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.red, shape: BoxShape.circle),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(Icons.favorite, color: Colors.white),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Icon(Icons.star,
                                    color: Colors.yellow, size: 17),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: CustomText(text: '4.5'),
                              )
                            ],
                          ),
                        ),
                      )
                    ]),
              ),
              Positioned.fill(
                bottom: -170,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'Pizza Peperoni',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: '\nby ',
                              style: TextStyle(color: Colors.grey)),
                          TextSpan(
                              text: 'Pizza hut',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[300]))
                        ])),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child:
                              CustomText(text: '\$12.99', color: Colors.white))
                    ]),
              ),
            ])
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavItem(icon: 'assets/images/house.png', icontext: 'Home'),
            BottomNavItem(
                icon: 'assets/images/nearby.png', icontext: 'Near by'),
            BottomNavItem(icon: 'assets/images/cart.png', icontext: 'Cart'),
            BottomNavItem(icon: 'assets/images/user.png', icontext: 'Account'),
          ],
        ),
      ),
    );
  }
}
