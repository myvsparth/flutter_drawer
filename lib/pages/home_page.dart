import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.home),
              Padding(
                padding: EdgeInsets.only(left: 5, right: 5),
              ),
              Text('Home Page'),
            ],
          ),
        ],
      ),
    );
  }
}