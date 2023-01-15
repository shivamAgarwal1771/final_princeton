import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreen();
}

class _MapScreen extends State<MapScreen> {
  final Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _KGooglePlex =
      CameraPosition(target: LatLng(51.5, -0.09), zoom: 14);
  List<Marker> _marker = [];
  List<Marker> _list = [
    Marker(markerId: MarkerId('1'), position: LatLng(51.5, -0.09)),
    Marker(markerId: MarkerId('2'), position: LatLng(51.4, -0.08)),
    Marker(markerId: MarkerId('3'), position: LatLng(51.6, -0.10))
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _marker.addAll(_list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          initialCameraPosition: _KGooglePlex,
          markers: Set<Marker>.of(_marker),
        ),
        
      ),
      floatingActionButton: FloatingActionButton.extended(backgroundColor: Colors.amber,onPressed: (){}, label: Text("List Of Nearby Mentors ",style: TextStyle(color: Colors.black),)),
    );
  }
}
