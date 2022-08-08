from flask import Blueprint, jsonify

# Models
from models.PostModel import PostModel

main = Blueprint('post_blueprint', __name__)


@main.route('/')
def get_stops():
    try:
        posts = PostModel.get_posts()
        return jsonify(posts)
    except Exception as ex:
        return jsonify({'message': str(ex)}), 500
