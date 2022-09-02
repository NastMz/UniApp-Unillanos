import psycopg2
from decouple import config
from psycopg2 import DatabaseError


def get_connection():
    try:
        return psycopg2.connect(
            host=config('PGSQL_HOST'),
            user=config('PGSQL_USER'),
            password=config('PGSQL_PASSWORD'),
            database=config('PGSQL_DATABASE'),
        )
    except DatabaseError as ex:
        raise ex
