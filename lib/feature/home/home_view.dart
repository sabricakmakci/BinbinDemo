import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

import 'package:latlong2/latlong.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      drawer: const Drawer(
        child: Text(""),
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(41.0097612, 29.2216882), zoom: 15),
            layers: [
              TileLayerOptions(
                urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                //change base_snow_map to pistes
                subdomains: ['a', 'b', 'c'],
              ),
              MarkerLayerOptions(markers: [
                Marker(
                    point: LatLng(41.0097612, 29.2216882),
                    builder: (_) {
                      return Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(color: Colors.cyan, shape: BoxShape.circle),
                        child: const Icon(Icons.home),
                      );
                    })
              ])
            ],
          ),
          Positioned(
              bottom: 60,
              left: 15,
              child: ElevatedButton.icon(
                  icon: const Icon(Icons.document_scanner),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(400, 50),
                      backgroundColor: Colors.cyan,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
                  onPressed: () {},
                  label: const Text("Start Ride"))),
          Positioned(
              bottom: 120,
              left: 15,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child:
                    IconButton(onPressed: () => _scaffoldkey.currentState?.openDrawer(), icon: const Icon(Icons.menu)),
              )),
          Positioned(
              bottom: 120,
              right: 15,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: IconButton(onPressed: () {}, icon: const Icon(Icons.location_searching)),
              ))
        ],
      ),
    );
  }
}
