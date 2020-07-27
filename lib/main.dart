import 'package:app_violencia_domestica/map.page.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.red,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MapPage(),
    );
  }
}

