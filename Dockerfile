FROM python:3.6.12

RUN mkdir /code
WORKDIR /code
COPY . /code/sublist3r
RUN pip install -r /code/sublist3r/requirements.txt

ENTRYPOINT ["python", "/code/sublist3r/sublist3r.py", "-o", "/subdomains/sublist3r-output.txt"]
