import sched
import time

from flask import Flask

from config import config
# Routes
from models.PostModel import PostModel
from routes import Stop, Post

app = Flask(__name__)

s = sched.scheduler(time.time, time.sleep)

t = 600


def find_post(sc):
    PostModel().save_posts()
    sc.enter(t, 1, find_post, (sc,))


def page_not_found(error):
    return '<h1>Page not found</h1>', 404


if __name__ == '__main__':
    # s.enter(t, 1, find_post, (s,))
    # s.run()

    app.config.from_object(config['development'])

    # Blueprints
    app.register_blueprint(Stop.main, url_prefix='/api/stops')
    app.register_blueprint(Post.main, url_prefix='/api/posts')

    # Error handlers
    app.register_error_handler(404, page_not_found)
    app.run(host='192.168.0.102', port=5000)
