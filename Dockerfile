FROM ubuntu:14.04
MAINTAINER Daniel Paulus <d.paulus@gmail.com>
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y \
  python-pip \
  sqlite3 \
  lib32z1-dev \
  python-dev \
  libxml2-dev \
  libxslt-dev \
  build-essential \
  libssl-dev \
  libffi-dev
RUN pip install https://github.com/mitsuhiko/flask/tarball/master owasp-skf

WORKDIR /usr/local/lib/python2.7/dist-packages/skf/
RUN sed -i 's/127.0.0.1/0.0.0.0/g' skf.py
ENTRYPOINT ["python", "skf.py"]
