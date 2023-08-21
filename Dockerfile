FROM python:3.7
COPY . /app
WORKDIR / app
RUN pip install -r requiremet.txt
EXPOSE $POTR
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORTRT app:app
