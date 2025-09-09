FROM ubuntu:22.04

LABEL org.llm-security-demo.image.authors="llm-security-demo Team"

ARG WIKI_REPO PYPI_MIRROR LISTEN_IP LISTEN_PORT
ENV LISTEN_IP=${LISTEN_IP:-0.0.0.0}
ENV LISTEN_PORT=${LISTEN_PORT:-8000}

WORKDIR /
RUN apt-get update \
    && apt-get install -y git wget curl gcc g++ make \
    && curl -sL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs \
    && curl -LsSf https://astral.sh/uv/install.sh | sh

# If you can't connect to GitHub, set WIKI_REPO to any mirror repo.
RUN git clone ${WIKI_REPO:-https://github.com/llm-security-demo/llm-security-demo.git} --depth=1 \
    && cd llm-security-demo \
    && uv sync --index-url ${PYPI_MIRROR:-https://pypi.org/simple/} \
    && yarn --frozen-lockfile

ADD .bashrc /root/

WORKDIR /llm-security-demo
EXPOSE ${LISTEN_PORT}
CMD ["/bin/bash"]
