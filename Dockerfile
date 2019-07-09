FROM python:2.7-alpine

CMD ["/bin/sh"]

RUN apk add --no-cache \
    gcc \
    libffi-dev \
    make \
    musl-dev \
    openssl-dev \
    python-dev

RUN pip install --no-cache-dir \
    flake8 \
    isort \
    mock \
    pytest \
    pytest-cov
