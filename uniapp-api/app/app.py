import sched
import time

from flask import Flask
from flask_cors import CORS

from config import configuration
from models.PostModel import PostModel
# Routes

from routes import Stop, Post

app = Flask(__name__)

s = sched.scheduler(time.time, time.sleep)

t = 600


def find_post(sc):
    PostModel().save_posts()
    sc.enter(t, 1, find_post, (sc,))


def page_not_found(error):
    return '<h1>Page not found</h1>', 404


app.config.from_object(configuration['development'])

# Blueprints
app.register_blueprint(Stop.main, url_prefix='/api/stops')
app.register_blueprint(Post.main, url_prefix='/api/posts')

# Error handlers
app.register_error_handler(404, page_not_found)

CORS(app)

if __name__ == '__main__':
    # s.enter(t, 1, find_post, (s,))
    # s.run()

    app.run(host='0.0.0.0', debug=True)
