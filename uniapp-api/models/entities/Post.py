class Post:

    def __init__(self, id, date=None, message=None, img=None):
        self.id = id
        self.date = date
        self.message = message
        self.img = img

    def to_json(self):
        return {
            'id': self.id,
            'date': self.date,
            'message': self.message,
            'img': self.img
        }
