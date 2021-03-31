import 'package:pielove/theme.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  //final int total;

  FacilityItem({this.name, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          '$imageUrl',
          width: 16,
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: EdgeInsets.only(left: 1),
          child: Text(' $name', style: blackTextStyle.copyWith(fontSize: 14)),
        ),
      ],
    );
  }
}
