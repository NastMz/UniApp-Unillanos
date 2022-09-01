import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:latlong2/latlong.dart';
import 'package:uniapp/widgets/image_popup.dart';

import '../models/map_marker.dart';

class MapWidget extends StatefulWidget {
  var points = <LatLng>[];

  var mapMarkers = <MapMarker>[];

  MapWidget({Key? key, required this.points, required this.mapMarkers})
      : super(key: key);

  @override
  _MapWidgetState createState() =>
      _MapWidgetState(points: points, mapMarkers: mapMarkers);
}

class _MapWidgetState extends State<MapWidget> with TickerProviderStateMixin {
  final pageController = PageController();
  int selectedIndex = 0;

  var points = <LatLng>[];

  var mapMarkers = <MapMarker>[];

  late final MapController mapController;

  _MapWidgetState({required this.points, required this.mapMarkers});

  @override
  void initState() {
    super.initState();
    mapController = MapController();
  }

  List<Marker> _buildMarkers() {
    final List<Marker> markersList = [];
    for (int i = 0; i < mapMarkers.length; i++) {
      markersList.add(Marker(
        height: 40,
        width: 40,
        point: mapMarkers[i].location,
        builder: (_) => GestureDetector(
          onTap: () {
            pageController.animateToPage(
              i,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
            _animatedMapMove(mapMarkers[i].location, 15);
            setState(() => selectedIndex = i);
          },
          child: AnimatedScale(
            duration: const Duration(milliseconds: 500),
            scale: selectedIndex == i ? 1 : 0.7,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 500),
              opacity: selectedIndex == i ? 1 : 0.5,
              child:
                  const Image(image: Svg('asset/images/svg/location_icon.svg')),
            ),
          ),
        ),
      ));
    }
    return markersList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            mapController: mapController,
            options: MapOptions(
                minZoom: 8,
                maxZoom: 18,
                zoom: 15,
                center: mapMarkers[0].location),
            layers: [
              TileLayerOptions(
                  urlTemplate:
                      "https://tile.openstreetmap.org/{z}/{x}/{y}.png"),
              PolylineLayerOptions(polylines: [
                Polyline(
                    points: points,
                    color: const Color(0xFFCB0303),
                    strokeWidth: 2.0)
              ]),
              MarkerLayerOptions(markers: _buildMarkers())
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 2,
            height: MediaQuery.of(context).size.height * 0.3,
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (value) {
                _animatedMapMove(mapMarkers[value].location, 15);
                setState(() => selectedIndex = value);
              },
              itemCount: mapMarkers.length,
              itemBuilder: (_, index) {
                final item = mapMarkers[index];
                return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: const Color(0xFFFFFFFF),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10, top: 20, left: 20, right: 20),
                        child: Center(
                            child: Column(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          item.title,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          item.address,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 5),
                            Expanded(
                              flex: 1,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) => GestureDetector(
                                              onTap: () =>
                                                  Navigator.pop(context),
                                              child: ImagePopup(item.image,
                                                  Key(item.title))));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: item.image != ''
                                          ? Image.asset(
                                              item.image,
                                              fit: BoxFit.fill,
                                            )
                                          : const FittedBox(
                                              fit: BoxFit.fill,
                                              child: Icon(
                                                Icons.photo_album,
                                                size: 100,
                                                color: Colors.grey,
                                              ),
                                            ),
                                    ),
                                  )),
                            ),
                          ],
                        )),
                      ),
                    ));
              },
            ),
          )
        ],
      ),
    );
  }

  void _animatedMapMove(LatLng destLocation, double destZoom) {
    // Create some tweens. These serve to split up the transition from one location to another.
    // In our case, we want to split the transition be<tween> our current map center and the destination.
    final latTween = Tween<double>(
        begin: mapController.center.latitude, end: destLocation.latitude);
    final lngTween = Tween<double>(
        begin: mapController.center.longitude, end: destLocation.longitude);
    final zoomTween = Tween<double>(begin: mapController.zoom, end: destZoom);

    // Create a animation controller that has a duration and a TickerProvider.
    var controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    // The animation determines what path the animation will take. You can try different Curves values, although I found
    // fastOutSlowIn to be my favorite.
    Animation<double> animation =
        CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);

    controller.addListener(() {
      mapController.move(
        LatLng(latTween.evaluate(animation), lngTween.evaluate(animation)),
        zoomTween.evaluate(animation),
      );
    });

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.dispose();
      } else if (status == AnimationStatus.dismissed) {
        controller.dispose();
      }
    });

    controller.forward();
  }
}
