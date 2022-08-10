from database.db import get_connection
from .entities.Post import Post


class PostModel:
    @classmethod
    def get_posts(cls):
        try:
            connection = get_connection()
            posts = []

            with connection.cursor() as cursor:
                cursor.execute("SELECT id, date, message, img FROM post")
                result = cursor.fetchall()

                for row in result:
                    post = Post(row[0], row[1], row[2], row[3])
                    posts.append(post.to_json())

            connection.close()
        except Exception as ex:
            raise Exception(ex)
