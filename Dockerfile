FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    curl \
    git \
    vim \
    wget \
    && rm -rf /var/lib/apt/lists/*

COPY . /no-global

WORKDIR /no-global

RUN chmod +x install.sh

RUN bash install.sh

CMD ["bash"]
