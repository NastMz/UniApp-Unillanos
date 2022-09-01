import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';
import 'package:retry/retry.dart';
import 'package:uniapp/models/map_marker.dart';
import 'package:uniapp/models/stop_model.dart';

class API {
  final host = '192.168.0.102:5000';

  Future<http.Response> _get(var url) async {
    var header = {
      HttpHeaders.contentTypeHeader: 'application/json',
      "Connection": "Keep-Alive",
      "Keep-Alive": "timeout=5, max=1000"
    };

    var response = await retry(
      // Make a GET request
      () => http.get(url, headers: header).timeout(const Duration(seconds: 5)),
      // Retry on SocketException or TimeoutException
      retryIf: (e) => e is SocketException || e is TimeoutException,
    );
    return response;
  }

  Future<List<StopModel>> _getRoutes() async {
    var response = await _get(Uri.http(host, 'api/stops'));
    Iterable l = json.decode(response.body);
    List<StopModel> stops =
        List<StopModel>.from(l.map((model) => StopModel.fromJson(model)));
    return stops;
  }

  Future<List> getStops() async {
    var routes = await _getRoutes();
    List<String> options = [];
    Map<String, List<LatLng>> points = {};
    Map<String, List<MapMarker>> markers = {};
    for (var route in routes) {
      route.stops!.removeWhere((element) => element.id! == 'pUni');
      route.stops!.sort((a, b) => a.id!.compareTo(b.id!));
      if (route.direction == 0) {
        options.add('${route.name!} - Hacia la U');
      } else {
        options.add('${route.name!} - Desde la U');
        route.stops = route.stops!.reversed.toList();
      }
      List<MapMarker> stopsList = [];
      List<LatLng> pointList = [];
      for (var stop in route.stops!) {
        stopsList.add(MapMarker(
            title: stop.place!,
            address: stop.details!,
            location: LatLng(stop.latitude!, stop.longitude!),
            image: 'asset/images/routes/${route.name!}/${stop.id!}.jpg'));
      }
      for (var stop in stopsList) {
        pointList.add(stop.location);
      }
      markers[options.last] = stopsList;
      points[options.last] = pointList;
    }
    options.sort((a, b) => a.compareTo(b));
    return [options, points, markers];
  }
}
