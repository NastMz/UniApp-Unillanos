from flask import Blueprint, jsonify

# Models
from models.StopModel import StopModel

main = Blueprint('stop_blueprint', __name__)


@main.route('/')
def get_stops():
    try:
        stops = StopModel.get_stops()
        return jsonify(stops)
    except Exception as ex:
        return jsonify({'message': str(ex)}), 500
