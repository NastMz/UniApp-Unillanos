import 'package:latlong2/latlong.dart';

class MapMarker {
  final String title;
  final String address;
  final LatLng location;
  final String image;

  MapMarker({
    required this.title,
    required this.address,
    required this.location,
    required this.image,
  });
}
