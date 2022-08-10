from database.db import get_connection
from .entities.Stop import Stop


class StopModel:
    @classmethod
    def get_stops(cls):
        try:
            connection = get_connection()
            stops = []

            with connection.cursor() as cursor:
                cursor.execute("SELECT id, place, details, longitude, latitude FROM stop")
                result = cursor.fetchall()

                for row in result:
                    stop = Stop(row[0], row[1], row[2], row[3], row[4])
                    stops.append(stop.to_json())

            connection.close()
        except Exception as ex:
            raise Exception(ex)
