#!/bin/sh
systemctl stop run-vmblock\\x2dfuse.mount
sudo killall -q -w vmtoolsd
systemctl start run-vmblock\\x2dfuse.mount
systemctl enable run-vmblock\\x2dfuse.mount
sudo vmware-user-suid-wrapper vmtoolsd -n vmusr 2>/dev/null
sudo vmtoolsd -b /var/run/vmroot 2>/dev/null