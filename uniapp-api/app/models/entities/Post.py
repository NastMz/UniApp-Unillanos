class Post:

    def __init__(self, id, date=None, message=None, img=None, author=None):
        self.id = id
        self.date = date
        self.message = message
        self.img = img
        self.author = author

    def to_json(self):
        return {
            'id': self.id,
            'date': self.date,
            'message': self.message,
            'img': self.img,
            'author': self.author
        }
