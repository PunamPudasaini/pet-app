import 'package:flutter/material.dart';

import 'DrawerScreen.dart';
import 'HomeScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[

          DrawerScreen(),
          HomeScreen(),


        ],
      ),
    );
  }
}
