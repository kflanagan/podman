
#!/bin/bash
# Update all running Podman containers

# Get all running container IDs
containers=$(podman ps -q)

for cid in $containers; do
    podman update "$cid" 2>&1 | tee -a /var/log/podman-update.log
    if [ $? -ne 0 ]; then
        echo "Failed to update container $cid" | tee -a /var/log/pod   
    elif [ -n "$cid" ]; then
        echo "Successfully updated container $cid" | tee -a /var/log/podman-update.log
    fi   
done