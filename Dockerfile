from ubuntu

MAINTAINER Daryl Walleck <daryl.walleck@rackspace.com>

# Install basic build and Python libraries
RUN apt-get update
RUN apt-get install -y git python-pip python-dev make build-essential

# Clone the repositories and install
RUN git clone https://github.com/stackforge/opencafe.git
RUN pip install ./opencafe

# Initialize OpenCafe and install plugins
RUN cafe-config init
RUN cafe-config plugins install http

CMD bash