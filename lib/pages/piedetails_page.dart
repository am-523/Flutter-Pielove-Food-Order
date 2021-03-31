import 'package:flutter/material.dart';
import 'package:pielove/pages/checkout_page.dart';
import 'package:pielove/theme.dart';
import 'package:pielove/widgets/faci_item.dart';

class PieDetailsScreen extends StatefulWidget {
  @override
  _PieDetailsScreenState createState() => _PieDetailsScreenState();
}

class _PieDetailsScreenState extends State<PieDetailsScreen> {
  bool isClicked = false;
  double _volume = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/PICT.png',
              width: MediaQuery.of(context).size.width,
              height: 460,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 396,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                      color: whiteColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'DoubleJumbo Pie',
                                  style: blackTextStyle.copyWith(fontSize: 23),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'IDR 59.999',
                                  style: orangeTextStyle.copyWith(fontSize: 18),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.red[50],
                            height: 50,
                            padding: EdgeInsets.symmetric(horizontal: edge),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FacilityItem(
                                  name: ' Free Delivery',
                                  imageUrl: 'assets/price.png',
                                ),
                                FacilityItem(
                                  name: ' 20 - 30',
                                  imageUrl: 'assets/Subtract.png',
                                ),
                                FacilityItem(
                                  name: ' 4.5',
                                  imageUrl: 'assets/Star.png',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Description',
                                  style: blackTextStyle.copyWith(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Cream Sweet Pie is a pie made from real honey\nand combined with cream on top of the pie",
                                  style: greyTextStyle.copyWith(fontSize: 15),
                                  maxLines: 2,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: ClipRRect(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: const Icon(
                                    Icons.indeterminate_check_box_outlined),
                                onPressed: () {
                                  setState(() {
                                    _volume -= 1;
                                  });
                                },
                              ),
                              Text(
                                '$_volume',
                                style: blackTextStyle,
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.add_shopping_cart,
                                ),
                                tooltip: 'Increase volume by 10',
                                onPressed: () {
                                  setState(() {
                                    _volume += 1;
                                  });
                                },
                              ),
                              Spacer(),
                              Text(
                                'IDR 119.998',
                                style: orangeTextStyle.copyWith(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 330,
                          height: 50,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CheckoutScreen(),
                                  ),
                                  (route) => false);
                            },
                            color: orangeColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: Text(
                              'Checkout Now',
                              style: whiteTextStyle.copyWith(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/BACK_BUTTON.png',
                      width: 15,
                    ),
                  ),
                  Text(
                    'Pie Details',
                    style: whiteTextStyle.copyWith(fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isClicked = !isClicked;
                      });
                    },
                    child: Image.asset(
                      isClicked
                          ? 'assets/LOVE_BUTTON1.png'
                          : 'assets/LOVE_BUTTON.png',
                      width: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
