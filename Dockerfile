FROM python:3
RUN apk add --no-cache py3-pip \
    && pip3 install --upgrade pip

COPY . .

RUN pip3 --no-cache-dir install -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["python3"]
CMD ["wrapper.py"]
