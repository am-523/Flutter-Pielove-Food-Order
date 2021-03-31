import 'package:flutter/material.dart';
import 'package:pielove/models/popular_card.dart';
import 'package:pielove/theme.dart';
import 'package:pielove/widgets/category_item.dart';
import 'package:pielove/widgets/navbar_item.dart';
import 'package:pielove/widgets/popular_item.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Image.asset(
                    'assets/profile.png',
                    height: 50,
                    width: 50,
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Asril",
                      style: whiteTextStyle.copyWith(fontSize: 20),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "What Pie you want to try today?",
                      style: whiteTextStyle.copyWith(fontSize: 14),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: new TextField(
                decoration: new InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: new TextStyle(color: Colors.grey[800]),
                    hintText: "Find your favorite Pie",
                    fillColor: purpleshadowColor),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  color: pinkColor),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 11,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: edge),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 2,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Category',
                            style: blackTextStyle.copyWith(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CategoryItem(
                              name: 'Salty Pie',
                              imageUrl: 'assets/item1.png',
                            ),
                            CategoryItem(
                              name: 'Sweet Pie',
                              imageUrl: 'assets/item2.png',
                            ),
                            CategoryItem(
                              name: 'Fruit Pie',
                              imageUrl: 'assets/item3.png',
                            ),
                            CategoryItem(
                              name: 'Drinks',
                              imageUrl: 'assets/item4.png',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Popular Sweet Pie',
                            style: blackTextStyle.copyWith(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 185,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              PopularCard(
                                Popular(
                                  id: 1,
                                  name: 'Cream Sweet',
                                  time: '10 - 20 min',
                                  rating: '3.4',
                                  imageURL: 'assets/pie1.png',
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              PopularCard(
                                Popular(
                                  id: 2,
                                  name: 'DoubleJumbo Pie',
                                  time: '15 - 25 min',
                                  rating: '4.4',
                                  imageURL: 'assets/pie2.png',
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              PopularCard(
                                Popular(
                                  id: 3,
                                  name: 'Fruit’s Small Pie',
                                  time: '20 - 30 min',
                                  rating: '4.0',
                                  imageURL: 'assets/pie3.png',
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 300,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
            color: Color(0xffF6F7F8), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/home.png',
              name: 'Home',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/basket.png',
              name: 'Cart',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/love.png',
              name: 'Love',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/user.png',
              name: 'Profile',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
