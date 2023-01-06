FROM python:3

COPY . .
RUN apt update && apt install python3-pip
RUN pip3 install -e .
EXPOSE 8080

ENTRYPOINT ["python3"]
CMD ["wrapper.py"]
