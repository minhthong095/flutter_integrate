import 'package:counter_to_platforms_module/my_home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/green',
      routes: {
        '/': (_) => Container(),
        '/green': (_) => MyHomePage(Colors.green, Colors.greenAccent),
        '/blue': (_) => MyHomePage(Colors.blue, Colors.blueAccent),
      },
    );
  }
}
