FROM debian:13.2-slim

RUN apt-get update && apt-get install -y \
    make \
    python3 \
    python3-pip \
    python3-venv \
    ruby \
    ruby-dev \
    build-essential \
    git \
    dos2unix

RUN gem install bundler --no-document

RUN export PATH="$PWD/lib/.gems/bin:$PATH"

WORKDIR /workspace

CMD ["/bin/bash"]
