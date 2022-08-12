import facebook as fb
from decouple import config

from models.entities.Post import Post


class FacebookAPI:
    @classmethod
    def get_posts(cls):
        token = config('TOKEN_KEY')
        graph = fb.GraphAPI(access_token=token, version=3.1)
        response = graph.request('JhMate03/published_posts?fields=full_picture,created_time,admin_creator,message')
        posts = []
        for post in response['data']:
            if 'full_picture' in post:
                img = post['full_picture']
            else:
                img = None
            posts.append(Post(id=post['id'], date=post['created_time'], message=post['message'], img=img,
                              author=post['admin_creator']['name']))
        return posts
