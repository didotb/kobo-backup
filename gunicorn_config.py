from os import getenv

workers = int(getenv("GUNICORN_PROCESSES",'2'))
threads = int(getenv("GUNICORN_THREADS",'4'))
bind = getenv("GUNICORN_BIND",'0.0.0.0:8008')

forwarded_allow_ips = '*'
secure_scheme_headers = {'X-Forward-Proto': 'https'}
