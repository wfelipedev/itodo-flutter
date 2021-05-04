import 'package:flutter/material.dart';
import 'package:itodo/pages/detail/detail.dart';
import 'package:itodo/utils/constants.dart';

class ListTileCustom extends StatelessWidget {
  ListTileCustom({this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Detail(title: title)),
        );
      },
      child: Container(
        height: 111,
        width: getWidth(context),
        margin: EdgeInsets.only(bottom: 8, left: 8),
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
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(-1, 3),
                          blurRadius: 0,
                          color: Colors.white,
                        ),
                      ],
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
