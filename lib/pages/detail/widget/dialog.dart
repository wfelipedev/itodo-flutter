import 'package:flutter/material.dart';
import 'package:itodo/utils/constants.dart';

class DialogAddCustom extends StatefulWidget {
  @override
  _DialogAddCustomState createState() => _DialogAddCustomState();
}

class _DialogAddCustomState extends State<DialogAddCustom> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      child: Container(
        height: 350,
        width: getWidth(context),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        decoration: BoxDecoration(
          color: kbackgroundColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.25),
              blurRadius: 0,
              offset: const Offset(-3, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
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
                  hintText: 'Título...',
                  labelStyle: TextStyle(color: Color(0xFF939597)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
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
                maxLines: 5,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF3F3F3),
                  hintText: 'Descrição...',
                  labelStyle: TextStyle(color: Color(0xFF939597)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 48,
                  width: getWidth(context) * .15,
                  decoration: BoxDecoration(
                    color: Color(0xFFF3F3F3),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.redAccent,
                        blurRadius: 0,
                        offset: const Offset(-3, 5),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text('Cancelar'),
                  ),
                ),
                Container(
                  height: 48,
                  width: getWidth(context) * .15,
                  decoration: BoxDecoration(
                    color: Color(0xFFF3F3F3),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.greenAccent,
                        blurRadius: 0,
                        offset: const Offset(-3, 5),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text('Ok'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
