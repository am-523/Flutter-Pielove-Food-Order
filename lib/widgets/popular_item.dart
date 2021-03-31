import 'package:pielove/models/popular_card.dart';

import 'package:pielove/pages/piedetails_page.dart';

import 'package:pielove/theme.dart';
import 'package:flutter/material.dart';

class PopularCard extends StatelessWidget {
  final Popular popular;
  PopularCard(this.popular);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PieDetailsScreen()));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Container(
          height: 200,
          width: 150,
          color: whiteColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          popular.imageURL,
                          width: 120,
                          height: 130,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 15,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Container(
                          width: 90,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Color(0xFFAFAFAF).withOpacity(0.8),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          child: Center(
                              child: Text(
                            popular.time,
                            style: blackTextStyle,
                          )),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 17),
                child: Text(
                  popular.name,
                  style: blackTextStyle.copyWith(fontSize: 14),
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 11),
                    child: Image.asset(
                      'assets/Icon_star_solid.png',
                      width: 22,
                      height: 22,
                    ),
                  ),
                  Positioned(
                    left: 10,
                    child: Text(
                      popular.rating,
                      style: orangeTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
