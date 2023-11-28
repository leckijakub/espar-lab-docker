#!/bin/bash

docker-compose down
umount /srv/nfs/exports/beacon_root
mount -o ro /home/jale/projects/private/study/mgr/rpi/yocto/build/tmp/deploy/images/eris-beacon-baseboard/image-eris-beacon-eris-beacon-baseboard.ext4 /srv/nfs/exports/beacon_root
exportfs -a
docker-compose up -d
