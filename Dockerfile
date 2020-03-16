FROM python:3.7-slim
ADD . /vipul
WORKDIR /vipul
RUN pip install --target=/vipul boto3
RUN chmod +x /vipul/main.py
CMD ["python", "/vipul/main.py"]