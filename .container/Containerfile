FROM docker.io/library/fedora@sha256:43b29f65a41eb9c35e1cd5323e3bdf3b655c2357a9f4f1ff2f9c2798e5045d80

USER root

RUN dnf install --assumeyes --setopt=install_weak_deps=False make-1:4.4.1-12.fc44.x86_64 && dnf clean all
RUN dnf install --assumeyes --setopt=install_weak_deps=False ncurses-6.6-1.fc44.x86_64 && dnf clean all
RUN dnf install --assumeyes --setopt=install_weak_deps=False golang-1.26.10-1.fc44 && dnf clean all

RUN useradd --create-home developer
USER developer
WORKDIR /home/developer/app
