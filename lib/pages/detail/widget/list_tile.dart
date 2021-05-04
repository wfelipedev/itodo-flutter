import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:itodo/utils/constants.dart';

class ListTileCustom extends StatefulWidget {
  ListTileCustom({this.status});
  final bool status;
  @override
  _ListTileCustomState createState() => _ListTileCustomState(status);
}

class _ListTileCustomState extends State<ListTileCustom> {
  bool status;

  _ListTileCustomState(bool status) {
    this.status = status;
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          this.status = !this.status;
        });
      },
      child: Container(
        height: 60,
        width: getWidth(context),
        margin: EdgeInsets.only(bottom: 8, left: 8),
        padding: EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: Color(0xFFC4C4C4),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF969BDB),
              blurRadius: 0,
              offset: const Offset(-3, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Title',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Subtitle',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF555555),
                  ),
                ),
              ],
            ),
            if (status) ...[
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.greenAccent[700],
                      blurRadius: 0,
                      offset: const Offset(-1, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}
