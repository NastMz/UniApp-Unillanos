class Stop:

    def __init__(self, id, place=None, details=None, longitude=None, latitude=None):
        self.id = id
        self.place = place
        self.details = details
        self.longitude = longitude
        self.latitude = latitude

    def to_json(self):
        return {
            'id': self.id,
            'place': self.place,
            'details': self.details,
            'longitude': self.longitude,
            'latitude': self.latitude
        }
