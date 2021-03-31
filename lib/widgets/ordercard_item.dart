import 'package:flutter/material.dart';
import 'package:pielove/theme.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class OrderCard extends StatelessWidget {
  var _imageUrl;
  var _name;
  var _harga;

  OrderCard(this._imageUrl, this._name, this._harga);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListTile(
            leading: Image.asset(_imageUrl),
            title: Text(
              _name,
              style: TextStyle(
                color: blackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              _harga,
              style: TextStyle(
                color: blackColor.withOpacity(0.7),
              ),
            ),
            trailing: Icon(
              Icons.delete,
              color: orangeColor,
            ),
          ),
        ),
      ),
      actions: <Widget>[
        IconSlideAction(
          caption: 'Archive',
          color: Colors.blue,
          icon: Icons.archive,
          // onTap: () => _showSnackBar('Archive'),
        ),
        IconSlideAction(
          caption: 'Share',
          color: Colors.indigo,
          icon: Icons.share,
          // onTap: () => _showSnackBar('Share'),
        ),
      ],
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
        ),
      ],
    );
  }
}
