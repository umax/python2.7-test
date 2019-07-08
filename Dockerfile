FROM google/cloud-sdk:alpine

CMD ["/bin/sh"]

# system packages
RUN apk add --no-cache gcc libffi-dev make musl-dev openssl-dev python-dev
RUN wget https://bootstrap.pypa.io/get-pip.py \
    && python get-pip.py \
    && rm get-pip.py

# cloud SDK
ENV GCLOUD_SDK_PATH=/google-cloud-sdk
RUN echo Y | gcloud components install app-engine-python beta
RUN echo Y | gcloud components update

# python packages
RUN pip install --no-cache-dir flake8 isort mock pytest pytest-cov
