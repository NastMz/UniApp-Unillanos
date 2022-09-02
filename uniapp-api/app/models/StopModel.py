from database.db import get_connection
from .entities.Stop import Stop


class StopModel:
    @classmethod
    def get_stops(cls):
        try:
            connection = get_connection()
            stops = []

            with connection.cursor() as cursor:
                cursor.execute("select rt.id_route, "
                               "rt.route_name, "
                               "rt.direction, "
                               "bs.id_bus_stop, "
                               "bs.place, "
                               "bs.details, "
                               "bs.latitude, "
                               "bs.length "
                               "from bus_stop as bs "
                               "inner join route_bus_stop rbs "
                               "on bs.id_bus_stop = rbs.id_bus_stop "
                               "inner join route as rt "
                               "on rt.id_route = rbs.id_route")
                result = cursor.fetchall()

                for row in result:
                    stop = Stop(row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7])
                    stops.append(stop.to_json())

            connection.close()
            return stops
        except Exception as ex:
            raise Exception(ex)
