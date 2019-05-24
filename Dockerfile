FROM python:3.7-stretch
ADD silverstripe-sspy /sspy
WORKDIR /sspy
RUN pip install -r requirements.txt
CMD ["python", "main.py"]
