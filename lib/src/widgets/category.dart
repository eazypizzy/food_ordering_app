import 'package:flutter/material.dart';
import 'package:food_ordering_app/src/models/models.dart';
import 'package:food_ordering_app/src/widgets/widgets.dart';

List<Category> categoryList = [
  Category(name: 'Salad', image: 'assets/images/salad.png'),
  Category(name: 'Steaks', image: 'assets/images/meat.png'),
  Category(name: 'Sea Food', image: 'assets/images/crab.png'),
  Category(name: 'Fast Food', image: 'assets/images/burger.png'),
  Category(name: 'Drinks', image: 'assets/images/beer.png')
];

class CategoryTile extends StatelessWidget {
  const CategoryTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red.withOpacity(.1),
                          offset: Offset(4, 6),
                          blurRadius: 20),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(categoryList[index].image, width: 50),
                  ),
                ),
                SizedBox(height: 10),
                CustomText(text: categoryList[index].name)
              ],
            ),
          );
        },
      ),
    );
  }
}
