#!/bin/bash

mkdir -p /tmp/borg
exec borg mount "$BORG_BACKUP_DIRECTORY" /tmp/borg
exec xterm
exec grsync
exec nautilus /tmp/borg
