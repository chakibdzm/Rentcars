import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rentcar/size_config.dart';
class MapsPage extends StatefulWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  final CameraPosition _initialPosition=CameraPosition(target:LatLng(24.903623,67.198367));
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SafeArea(child: Scaffold(
      body: GoogleMap(initialCameraPosition: _initialPosition,
        mapType: MapType.normal
        ,
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
      ),

    ));
  }
}
