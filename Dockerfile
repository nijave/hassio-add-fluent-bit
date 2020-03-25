FROM alpine

RUN apk add python3
RUN python3 -m pip install docker
COPY run.py /run.py
CMD ["python3", "-u", "/run.py"]
