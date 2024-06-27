#!/bin/bash

mkdir -p /tmp/borg
exec borg mount "$BORG_BACKUP_DIRECTORY" /tmp/borg
exec grsync
exec nautilus /tmp/borg
