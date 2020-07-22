FROM python:3.6.9-alpine

ARG UID=1000

RUN apk update && \
    apk add --no-cache chromium chromium-chromedriver xvfb && \
    apk add --no-cache --virtual .build-deps alpine-sdk unzip openssl-dev libressl-dev libexif udev libffi-dev xauth

COPY requirement.txt requirement.txt

RUN pip install --upgrade -r requirement.txt \
    && apk del --no-cache --update-cache .build-deps

RUN adduser -h  /home/robot -s /bin/ash -S robot -u $UID && \
    mkdir -p /robot && \
    mkdir -p /robot/report && \
    chown -R robot: /robot

WORKDIR /robot

ENV CHROME_BIN=/usr/bin/chromium-browser \
    CHROME_PATH=/usr/lib/chromium/

USER robot

ENTRYPOINT ["robot"]



