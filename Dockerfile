FROM python:3.10.12-alpine3.18

MAINTAINER didotb

ADD main.py gunicorn_config.py requirements.txt favicon.ico /project/

WORKDIR /project/

RUN pip install -U pip; \
  pip install -r requirements.txt; \
  touch ./kobo-backup.log

EXPOSE 8008

CMD ["gunicorn","--config","gunicorn_config.py","main:app"]
