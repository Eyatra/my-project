import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MyMap extends StatefulWidget {
  const MyMap({Key? key}) : super(key: key);

  @override
  _MyMapState createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(36.752887, 3.042048),
        zoom: 13.0,
      ),
      children: [
        TileLayer(
            urlTemplate:
                'https://api.mapbox.com/styles/v1/amenmelki/clglmich200at01qy9rzf0xkj/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYW1lbm1lbGtpIiwiYSI6ImNsZWgzeXVjdjBjcnozeW14c3BjNW42MGsifQ.Z9Isfs8sjZR5rj4ZKvKVdQ',
            additionalOptions: {
              'access token':
                  'pk.eyJ1IjoiYW1lbm1lbGtpIiwiYSI6ImNsZWgzeXVjdjBjcnozeW14c3BjNW42MGsifQ.Z9Isfs8sjZR5rj4ZKvKVdQ',
              'id': 'mapbox.mapbox-streets-v8'
            }),
        MarkerLayer(
          markers: [
            Marker(
              width: 80.0,
              height: 80.0,
              point: LatLng(36.752887, 3.042048),
              builder: (ctx) => const Icon(
                Icons.location_pin,
                size: 50.0,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
