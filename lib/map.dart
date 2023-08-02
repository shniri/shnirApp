import 'package:flutter/cupertino.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Map extends StatelessWidget {
  const Map({super.key});
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
          center: const LatLng(54, 61), zoom: 9.2, maxZoom: 18, minZoom: 1),
      children: [
        TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png'),
      ],
    );
  }
}
