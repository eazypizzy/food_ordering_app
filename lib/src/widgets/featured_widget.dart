import 'package:flutter/material.dart';
import 'package:food_ordering_app/src/models/models.dart';
import 'package:food_ordering_app/src/widgets/widgets.dart';

List<FeaturedFoods> list = [
  FeaturedFoods(
      image: 'assets/images/salmon.jpg',
      name: 'Grilled Salmon',
      rating: '4.9',
      wishList: true,
      vendor: 'GoodFoods',
      price: '\$12.99'),
  FeaturedFoods(
      image: 'assets/images/pasta.jpg',
      name: 'Pasta with Sauce',
      rating: '4.5',
      vendor: 'GoodFoods',
      wishList: false,
      price: '\$9.99')
];

class Featured extends StatelessWidget {
  const Featured({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
                height: 220,
                width: 200,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.red.withOpacity(.1),
                      offset: Offset(1, 1),
                      blurRadius: 4)
                ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset(
                        list[index].image,
                        height: 100,
                        width: 140,
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CustomText(
                            text: list[index].name,
                            color: Colors.grey[700],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(.5),
                                        offset: Offset(1, 1),
                                        blurRadius: 4)
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: (list[index].wishList)
                                    ? Icon(Icons.favorite, color: Colors.red)
                                    : Icon(Icons.favorite_border,
                                        color: Colors.red),
                              )),
                        )
                      ],
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: CustomText(
                                    text: list[index].rating,
                                    color: Colors.grey,
                                  ),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 11,
                                  color: Colors.red,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 11,
                                  color: Colors.red,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 11,
                                  color: Colors.red,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 11,
                                  color: Colors.red,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 11,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: CustomText(text: list[index].price),
                            )
                          ]),
                    )
                  ],
                )),
          );
        },
      ),
    );
  }
}
