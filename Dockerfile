FROM google/cloud-sdk:alpine

RUN apk add --no-cache gcc python-dev musl-dev libffi-dev openssl-dev

RUN echo Y | gcloud components install app-engine-python app-engine-python-extras
RUN wget https://bootstrap.pypa.io/get-pip.py \
    && python get-pip.py \
    && rm get-pip.py
RUN pip install --no-cache-dir flake8 isort mock pytest pytest-cov

ENV GCLOUD_SDK_PATH=/google-cloud-sdk
CMD ["/bin/sh"]
