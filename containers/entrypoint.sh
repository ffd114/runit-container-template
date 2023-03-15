#/bin/bash

# Run some prerunning script here
# for example, database migration

# cd /app
# poetry run aerich upgrade

# Execute runit services
runsvdir -P /services
