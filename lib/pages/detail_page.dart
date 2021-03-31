import 'package:flutter/material.dart';
import 'package:pielove/pages/home_page.dart';
import 'package:pielove/theme.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Image.asset(
                'assets/chef.png',
                width: MediaQuery.of(context).size.width,
                height: 590,
                fit: BoxFit.cover,
              ),
              ListView(
                children: [
                  SizedBox(
                    height: 570,
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
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'PieLove Anetto',
                                  style: blackTextStyle.copyWith(fontSize: 24),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "Let's taste the Pie Cake made \n by Chef Bimo Semesta",
                                  style: blackTextStyle.copyWith(fontSize: 14),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                Container(
                                  width: 210,
                                  height: 50,
                                  child: RaisedButton(
                                    onPressed: () {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => HomeScreen(),
                                          ),
                                          (route) => false);
                                    },
                                    color: orangeColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17),
                                    ),
                                    child: Text(
                                      'Let’s Order',
                                      style:
                                          whiteTextStyle.copyWith(fontSize: 18),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 100,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
