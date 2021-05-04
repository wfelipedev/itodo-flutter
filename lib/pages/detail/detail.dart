import 'package:flutter/material.dart';
import 'package:itodo/pages/detail/widget/dialog.dart';
import 'package:itodo/pages/detail/widget/list_tile.dart';
import 'package:itodo/utils/constants.dart';

class Detail extends StatefulWidget {
  Detail({this.title});
  final String title;
  @override
  _DetailState createState() => _DetailState(title);
}

class _DetailState extends State<Detail> {
  String title;

  _DetailState(String title) {
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kbackgroundColor,
        title: Text(title),
        centerTitle: true,
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      body: Container(
          height: getHeight(context),
          width: getWidth(context),
          padding: EdgeInsets.only(right: 24, left: 16),
          color: kbackgroundColor,
          child: ListView(
            children: [
              ListTileCustom(status: false),
              ListTileCustom(status: false),
              ListTileCustom(status: false),
            ],
          )),
      floatingActionButton: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return DialogAddCustom();
            },
          );
        },
        child: Container(
          height: 56,
          width: 56,
          decoration: BoxDecoration(
            color: Color(0xFFF3F3F3),
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.25),
                blurRadius: 0,
                offset: const Offset(-3, 5),
              ),
            ],
          ),
          child: Center(
            child: Icon(
              Icons.add,
              size: 32,
              color: Color(0xFF555555),
            ),
          ),
        ),
      ),
    );
  }
}
