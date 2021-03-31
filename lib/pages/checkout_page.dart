import 'package:flutter/material.dart';
import 'package:pielove/theme.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:pielove/widgets/ordercard_item.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF554AB2),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: 65,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                      color: Color(0xffF6F5FF)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
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
                                  'Order List',
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
                          child: Column(
                            children: <Widget>[
                              OrderCard(
                                'assets/pie1.png',
                                'DoubleJumbo Pie',
                                'IDR 119.998',
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              OrderCard(
                                'assets/pie2.png',
                                'Double Jumbo',
                                'IDR 219.998',
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
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
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: edge),
                              child: Text(
                                'Payment Menthod',
                                style: regularTextStyle.copyWith(fontSize: 20),
                              ),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Container(
                              margin: EdgeInsets.all(20),
                              child: new TextField(
                                decoration: new InputDecoration(
                                    prefixIcon: Icon(Icons.credit_card),
                                    filled: true,
                                    hintStyle:
                                        new TextStyle(color: Colors.grey[800]),
                                    hintText: "••••  ••••  ••••  2003",
                                    fillColor: whiteColor),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: edge),
                              child: Text(
                                'Promo Code',
                                style: regularTextStyle.copyWith(fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(20),
                              child: new TextField(
                                decoration: new InputDecoration(
                                    border: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(0),
                                      ),
                                    ),
                                    filled: true,
                                    hintStyle: new TextStyle(color: greyColor),
                                    hintText: "Enter your discount code",
                                    fillColor: Colors.red[50]),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: edge),
                              child: Text(
                                'Payment Summary',
                                style: regularTextStyle.copyWith(fontSize: 20),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: edge),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Subtotal',
                                    style: greyTextStyle,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Text(
                                      'IDR 199.997',
                                      style: blackTextStyle,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: edge),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Delivery Fee',
                                    style: greyTextStyle,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Text(
                                      'FREE',
                                      style: blackTextStyle,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: edge),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total',
                                    style: greyTextStyle,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Text(
                                      'IDR 199.997',
                                      style: blackTextStyle,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: 330,
                                height: 50,
                                child: RaisedButton(
                                  onPressed: () {
                                    // Navigator.pushAndRemoveUntil(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //       builder: (context) => HomePage(),
                                    //     ),
                                    //     (route) => false);
                                  },
                                  color: orangeColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child: Text(
                                    'Checkout Now',
                                    style:
                                        whiteTextStyle.copyWith(fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
                      width: 10,
                    ),
                  ),
                  // Text(
                  //   'Checkout',
                  //   style: whiteTextStyle.copyWith(fontSize: 20),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
