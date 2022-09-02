from database.db import get_connection
from facebook_api.FacebookAPI import FacebookAPI
from .entities.Post import Post


class PostModel:
    @classmethod
    def get_posts(cls):
        try:
            connection = get_connection()
            posts = []

            with connection.cursor() as cursor:
                cursor.execute("SELECT * FROM post")
                result = cursor.fetchall()

                for row in result:
                    post = Post(row[0], row[1], row[2], row[3])
                    posts.append(post.to_json())

            connection.close()
        except Exception as ex:
            raise Exception(ex)

    @classmethod
    def save_posts(cls):
        try:
            connection = get_connection()
            posts = FacebookAPI().get_posts()

            with connection.cursor() as cursor:
                for post in posts:
                    cursor.execute("SELECT * FROM post where id=%s", post.id)
                    result = cursor.fetchall()
                    if len(result) == 0:
                        if post.img is None:
                            cursor.execute(
                                "INSERT INTO post (id, message, date, author) VALUES(%s, %s, %s, %s)",
                                (post.id, post.message, post.date, post.author))
                        else:
                            cursor.execute(
                                "INSERT INTO post (id, message, date, author, img) VALUES(%s, %s, %s, %s, %s)",
                                (post.id, post.message, post.date, post.author, post.img))

            connection.close()
        except Exception as ex:
            raise Exception(ex)
