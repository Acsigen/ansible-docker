FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive
RUN mkdir /ansible && chown -R ubuntu: /ansible
RUN apt update && apt install -y python3 curl pipx openssh-client && apt clean
USER ubuntu
RUN pipx install --include-deps ansible
ENV PATH=$PATH:/home/ubuntu/.local/bin
RUN pipx upgrade --include-injected ansible
RUN pipx inject --include-apps ansible argcomplete
RUN activate-global-python-argcomplete --user
WORKDIR /ansible
