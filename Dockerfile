FROM jlesage/baseimage-gui:alpine-3.20-v4

RUN set -ex; \
    \
    apk upgrade --no-cache -a; \
    apk add --no-cache \
        util-linux-misc \
        bash \
        borgbackup \
        rsync \
        fuse \
        py3-llfuse \
        jq
# TOOD: add further dependencies like e.g. nautilus and grsync and viewers like xterm, eog, gedit, onlyoffice-desktopeditors, vlc

COPY startapp.sh /startapp.sh

# Set the name of the application.
RUN set-cont-env APP_NAME "borg-viewer"
