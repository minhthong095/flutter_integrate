import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage(this.mainColor, this.themeColor);
  final Color mainColor;
  final Color themeColor;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                flatButton(
                  '+',
                  () {
                    setState(() {
                      _counter++;
                    });
                  },
                  widget.mainColor,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: widget.mainColor,
                      border: Border.all(
                          color: Colors.greenAccent.withOpacity(0.8), width: 4),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 26),
                  child: Text(
                    '$_counter',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                flatButton('-', () {
                  setState(() {
                    _counter--;
                  });
                }, widget.mainColor, fontSize: 45),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20, top: 30),
              child: Text('Exit and send data back to platform.'),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    color: widget.mainColor,
                    border: Border.all(
                        color: widget.themeColor.withOpacity(0.8), width: 4),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 26),
                child: Text(
                  'EXIT',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget flatButton(String text, Function onPressed, Color color,
        {double fontSize}) =>
    GestureDetector(
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Text(text,
            style: TextStyle(fontSize: fontSize ?? 30, color: color)),
      ),
      onTap: onPressed,
    );
