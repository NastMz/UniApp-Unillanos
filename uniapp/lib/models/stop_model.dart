class StopModel {
  int? direction;
  String? name;
  String? routeId;
  List<Stops>? stops;

  StopModel({this.direction, this.name, this.routeId, this.stops});

  StopModel.fromJson(Map<String, dynamic> json) {
    direction = json['direction'];
    name = json['name'];
    routeId = json['route_id'];
    if (json['stops'] != null) {
      stops = <Stops>[];
      json['stops'].forEach((v) {
        stops!.add(Stops.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['direction'] = direction;
    data['name'] = name;
    data['route_id'] = routeId;
    if (stops != null) {
      data['stops'] = stops!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Stops {
  String? details;
  String? id;
  double? latitude;
  double? longitude;
  String? place;

  Stops({details, id, latitude, longitude, place});

  Stops.fromJson(Map<String, dynamic> json) {
    details = json['details'];
    id = json['id'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    place = json['place'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['details'] = details;
    data['id'] = id;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['place'] = place;
    return data;
  }
}