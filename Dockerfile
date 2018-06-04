FROM ligo/base:stretch

LABEL name="LALSuite Development - Debian Stretch" \
      maintainer="Adam Mercer <adam.mercer@ligo.org>" \
      date="20180604" \
      support="Best Effort"

# FIXME: this should use the lscsoft-lalsuite-dev meta-package but
# that is out of date on Debian and needs to be updated
RUN apt-get update && apt-get --assume-yes install autoconf \
      automake \
      bc \
      build-essential \
      ccache \
      devscripts \
      doxygen \
      fakeroot \
      git \
      git-lfs \
      help2man \
      ldas-tools-framecpp-c-dev \
      libcfitsio-dev \
      libchealpix-dev \
      libfftw3-dev \
      libframe-dev \
      libglib2.0-dev \
      libgsl-dev \
      libhdf5-dev \
      libmetaio-dev \
      liboctave-dev \
      libopenmpi-dev \
      libtool \
      libxml2-dev \
      pkg-config \
      python-all-dev \
      python-dev \
      python-glue \
      python-h5py \
      python-healpy \
      python-ligo-gracedb \
      python-ligo-segments \
      python-numpy \
      python-reproject \
      python-scipy \
      python-seaborn \
      python-shapely \
      python-six \
      python3-all-dev \
      python3-dev \
      python3-glue \
      python3-h5py \
      python3-healpy \
      python3-ligo-segments \
      python3-numpy \
      python3-scipy \
      python3-shapely \
      python3-six \
      swig \
      swig3.0 \
      texlive

# git-lfs post-install
RUN git lfs install

# clear package cache
RUN rm -rf /var/lib/apt/lists/*
