import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Private SDK Delegate'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            flatButton('+', () {
              setState(() {
                _counter++;
              });
            }),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xff2d5fea),
                  border: Border.all(color: Color(0xffBAD2FD), width: 4),
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
            }, fontSize: 45),
            Expanded(
              child: Center(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff2d5fea),
                        border: Border.all(color: Color(0xffBAD2FD), width: 4),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 26),
                    child: Text(
                      'SEND PLATFORM',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
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

Widget flatButton(String text, Function onPressed, {double fontSize}) =>
    GestureDetector(
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Text(text,
            style: TextStyle(fontSize: fontSize ?? 30, color: Colors.blue)),
      ),
      onTap: onPressed,
    );
