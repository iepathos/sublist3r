FROM python:3.6.12

RUN mkdir /code
WORKDIR /code
COPY . /code/Sublist3r
RUN pip install -r /code/Sublist3r/requirements.txt

ENTRYPOINT ["python", "/code/Sublist3r/sublist3r.py", "-o", "/subdomains/sublist3r-output.txt"]
