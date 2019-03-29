FROM ligo/base:stretch

LABEL name="LALSuite Development - Debian Stretch" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      date="20190329" \
      support="Best Effort"

# install lalsuite-dependencies
RUN apt-get update && apt-get --assume-yes install \
      build-essential \
      ccache \
      git-lfs \
      lscsoft-lalsuite-dev \
      python-ligo-gracedb \
      python3-ligo-gracedb

# git-lfs post-install
RUN git lfs install

# clear package cache
RUN rm -rf /var/lib/apt/lists/*
