FROM python:3

COPY . .
RUN apt install python3-pip
RUN pip3 install -r requirement.txt

EXPOSE 8080

ENTRYPOINT ["python3"]
CMD ["wrapper.py"]
