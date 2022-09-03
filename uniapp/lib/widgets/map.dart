import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:latlong2/latlong.dart';
import 'package:uniapp/models/map_marker.dart';
import 'package:uniapp/widgets/map_card.dart';

class MapWidget extends StatefulWidget {
  List<LatLng> points;

  List<MapMarker> mapMarkers;

  MapWidget({Key? key, required this.points, required this.mapMarkers})
      : super(key: key);

  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> with TickerProviderStateMixin {
  final pageController = PageController();
  int selectedIndex = 0;

  late final MapController mapController;

  @override
  void initState() {
    super.initState();
    mapController = MapController();
  }

  List<Marker> _buildMarkers() {
    final List<Marker> markersList = [];
    for (int i = 0; i < widget.mapMarkers.length; i++) {
      markersList.add(Marker(
        height: 40,
        width: 40,
        point: widget.mapMarkers[i].location,
        builder: (_) => GestureDetector(
          onTap: () {
            pageController.animateToPage(
              i,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
            _animatedMapMove(widget.mapMarkers[i].location, 15);
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
                center: widget.mapMarkers[0].location),
            layers: [
              TileLayerOptions(
                  urlTemplate:
                      "https://tile.openstreetmap.org/{z}/{x}/{y}.png"),
              PolylineLayerOptions(polylines: [
                Polyline(
                    points: widget.points,
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
                _animatedMapMove(widget.mapMarkers[value].location, 15);
                setState(() => selectedIndex = value);
              },
              itemCount: widget.mapMarkers.length,
              itemBuilder: (_, index) {
                final item = widget.mapMarkers[index];
                return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: MapCard(item: item));
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
