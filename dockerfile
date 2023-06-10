FROM python:3.8

RUN python3 -m pip install flask
RUN mkdir /app
WORKDIR /app
COPY hello.py /app
ENV FLASK_APP=hello.py
CMD ["flask", "run"]