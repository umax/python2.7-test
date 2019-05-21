FROM python:2.7-alpine

RUN pip install --no-cache-dir flake8 isort mock pytest pytest-cov

CMD ["/bin/sh"]
