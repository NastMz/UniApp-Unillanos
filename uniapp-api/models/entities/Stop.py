class Stop:

    def __init__(self, route, route_name, direction, id_bus_stop, place, details, longitude,
                 latitude):
        self.route = route
        self.route_name = route_name,
        self.direction = direction,
        self.id = id_bus_stop
        self.place = place
        self.details = details
        self.longitude = longitude
        self.latitude = latitude

    def to_json(self):
        return {
            'route': self.route,
            'route_name': self.route_name,
            'direction': self.direction,
            'id': self.id,
            'place': self.place,
            'details': self.details,
            'longitude': self.longitude,
            'latitude': self.latitude
        }
