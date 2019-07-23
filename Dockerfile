FROM python:2.7-alpine

CMD ["/bin/sh"]

RUN apk add --no-cache \
    build-base \
    gcc \
    libffi-dev \
    make \
    musl-dev \
    openssl-dev \
    python-dev

RUN pip install --no-cache-dir \
    flake8 \
    grpcio==1.8.2 \
    isort \
    mock \
    pytest \
    pytest-cov
