from flask import Blueprint, jsonify, request

# Models
from models.StopModel import StopModel

main = Blueprint('stop_blueprint', __name__)


@main.route('/')
def get_stops():
    print(request)
    try:
        stops = StopModel.get_stops()
        return jsonify(serialize_route(stops))
    except Exception as ex:
        return jsonify({'message': str(ex)}), 500


def serialize_route(stops):
    serialized_routes = []
    for stop in stops:
        route = {'route_id': stop['route'],
                 'name': stop['route_name'][0],
                 'direction': 0 if stop['route'][-1] == 'U' else 1,
                 'stops': []}
        if route not in serialized_routes:
            serialized_routes.append(route)

    for stop in stops:
        direction = stop['direction'][0]
        name = stop['route_name'][0]
        del stop['route']
        del stop['direction']
        del stop['route_name']
        index = next(
            (i for i, item in enumerate(serialized_routes) if item["name"] == name and item['direction'] == direction),
            None)
        serialized_routes[index]['stops'].append(stop)

    return serialized_routes
