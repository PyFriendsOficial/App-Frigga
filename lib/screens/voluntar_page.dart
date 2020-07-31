import 'package:flutter/material.dart';

class VoluntaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text("Voluntários"),
        backgroundColor: Colors.purple,
        ),
      body: Center(
            child: 
            SizedBox(
              height: 100,
              child: 
              Image.asset("assets/volun.png"),
            ),
          ),
    );
  }
}