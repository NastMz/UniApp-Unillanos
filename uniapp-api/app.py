from flask import Flask

from config import config
# Routes
from routes import Stop, Post

app = Flask(__name__)


def page_not_found(error):
    return '<h1>Page not found</h1>', 404


if __name__ == '__main__':
    app.config.from_object(config['development'])

    # Blueprints
    app.register_blueprint(Stop.main, url_prefix='/api/stops')
    app.register_blueprint(Post.main, url_prefix='/api/posts')

    # Error handlers
    app.register_error_handler(404, page_not_found)
    app.run()
