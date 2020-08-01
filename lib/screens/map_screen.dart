import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {

  Set<Marker> _markers = HashSet<Marker>();

  

  GoogleMapController mapController;

  final LatLng _center = const LatLng(-23.5625871, -46.6552981);

  final LatLng _center1 = const LatLng(-23.5583136, -46.6510289);

  final LatLng _center2 = const LatLng(-23.555485, -46.6540854);

  GoogleMapController _mapController;

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;

    setState(() {
      _markers.add(Marker(
        markerId: MarkerId("0"),
        position: _center,
        infoWindow: InfoWindow(
          title: "Av. Paulista, 1450, São Paulo",
          snippet: "Confusão Domiciliar"
          ),
        ));
        _markers.add(Marker(
        markerId: MarkerId("1"),
        position: _center1,
        infoWindow: InfoWindow(
          title: "R. Itapeva, 142, São Paulo",
          snippet: "Agressão de familiar"
          ),
        ));
        _markers.add(Marker(
        markerId: MarkerId("2"),
        position: _center2,
        infoWindow: InfoWindow(
          title: "R. Frei Caneca, 569, São Paulo",
          snippet: "Mulher Sofrendo Violência Física"
          ),
        ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('HeatMap'),
          backgroundColor: Colors.purple,
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
          markers: _markers,
        ),
      ),
    );
  }
}