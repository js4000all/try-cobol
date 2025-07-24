FROM node:22-slim

RUN set -x \
    && apt-get update \
    && apt-get install -y \
    git \
    curl \
    vim \
    less \
    gnucobol4 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && npm install -g \
    @google/gemini-cli

USER node

COPY ./aliases.sh /etc/profile.d/aliases.sh
CMD [ "bash", "-l" ]
