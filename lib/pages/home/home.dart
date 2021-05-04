import 'package:flutter/material.dart';
import 'package:itodo/pages/home/widgets/list_tile.dart';
import 'package:itodo/utils/constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kbackgroundColor,
      ),
      body: Container(
        height: getHeight(context),
        width: getWidth(context),
        color: kbackgroundColor,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ITodo',
                    style: TextStyle(
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(-3, 5),
                          blurRadius: 0,
                          color: Color(0xFF969BDB),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.add,
                    size: 32,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24),
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.25),
                      blurRadius: 0,
                      offset: const Offset(-3, 5),
                    ),
                  ],
                ),
                child: TextFormField(
                  obscureText: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF3F3F3),
                    hintText: 'Pesquise sua lista...',
                    labelStyle: TextStyle(color: Color(0xFF939597)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    prefixIcon: Icon(Icons.search),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Container(
              height: getHeight(context) * .7,
              margin: EdgeInsets.only(top: 24),
              padding: EdgeInsets.only(right: 24, left: 16),
              child: ListView(
                children: [
                  ListTileCustom(
                    title: 'Compras Supermercado',
                  ),
                  ListTileCustom(title: 'Tarefas de Casa'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
