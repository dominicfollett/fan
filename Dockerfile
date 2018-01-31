FROM resin/raspberrypi3-buildpack-deps:jessie

# GStreamer  and openCV deps
# Several retries is a workaround for flaky downloads
RUN packages="python3-rpi.gpio findutils coreutils zip software-properties-common pkg-config libgtk2.0-dev libatlas-dev libgraphicsmagick1-dev graphicsmagick wget git libboost-all-dev python3-picamera curl python python-dev unzip supervisor libzmq3 libzmq3-dev v4l-utils python3-pip python3-dev python3-numpy python-numpy libgstreamer1.0-dev libgstreamer1.0-0 libgstreamer-vaapi1.0-dev libgstreamer-vaapi1.0-0 libgstreamer-plugins-base1.0-dev libgstreamer-plugins-bad1.0-dev libgstreamer-plugins-bad1.0-0 libgstreamer-plugins-base1.0-0 gstreamer1.0-tools gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-omx build-essential cmake libeigen3-dev libjpeg-dev libtiff5-dev libtiff5 libjasper-dev libjasper1 libpng12-dev libpng12-0 libavcodec-dev  libavcodec56 libavformat-dev libavformat56 libswscale-dev libswscale3 libv4l-dev libv4l-0 libatlas-base-dev libatlas3-base gfortran libblas-dev libblas3 liblapack-dev liblapack3 python3-dev libpython3-dev" \
    && apt-get -y update \
    && apt-get -y install $packages \
    || apt-get -y install $packages \
    || apt-get -y install $packages \
    || apt-get -y install $packages \
    || apt-get -y install $packages \
    || apt-get -y install $packages \
    || apt-get -y install $packages \
    || apt-get -y install $packages

CMD python3 run-fan.py