import 'package:flutter/material.dart';

class Tester extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack Example'),
        ),
        body: Stack(
          children: [
            // Widget at the bottom
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.blue,
            ),

            // Widget in the middle
            Positioned(
              top: 100,
              left: 50,
              child: Text(
                'Hello',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),

            // Widget at the top
            Positioned(
              top: 150,
              left: 100,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
