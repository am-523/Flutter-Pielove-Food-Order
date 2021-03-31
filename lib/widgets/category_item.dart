import 'package:pielove/theme.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String name;
  final String imageUrl;

  CategoryItem({this.name, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          '$imageUrl',
          width: 60,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(children: [
            TextSpan(
                text: ' $name', style: regularTextStyle.copyWith(fontSize: 14))
          ]),
        ),
      ],
    );
  }
}
