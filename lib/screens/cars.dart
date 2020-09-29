import 'package:flutter/material.dart';
import 'package:Testapp/screens/carDetail/screens/cars_overview.dart';

void main() {
  runApp(Cars());
}

class Cars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cars',
      theme:
          ThemeData(primaryColor: Colors.white, accentColor: Color(0xff05e62a)),
      home: CarsOverviewScreen(),
    );
  }
}
