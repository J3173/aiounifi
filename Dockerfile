FROM python:3.9

COPY requirements.txt /aiounifi/
RUN pip install -r /aiounifi/requirements.txt

COPY . /aiounifi
ENV PYTHONPATH=/aiounifi

ENTRYPOINT ["python", "/aiounifi/aiounifi"]
