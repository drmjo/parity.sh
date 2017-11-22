FROM parity/parity:stable-release

RUN adduser --disabled-password --gecos '' parity

USER parity
