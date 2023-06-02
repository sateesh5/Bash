#!/bin/bash

# Get the list of hosts from the file
hosts=$(cat hosts.txt)

# Loop over the hosts
for host in $hosts; do

  # Check if the host is accessible
  if [[ $(ssh -o StrictHostKeyChecking=no $host hostname) ]]; then

    # Delete the files
    ssh -o StrictHostKeyChecking=no $host rm -rf /path/to/files

  fi

done
