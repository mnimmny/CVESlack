FROM python:2

WORKDIR /usr/src/app

RUN mkdir /usr/src/app/out
COPY requirements.txt ./
RUN pip install -r requirements.txt

ADD ./apiClient/* ./

CMD [ "python", "run.py" ]
