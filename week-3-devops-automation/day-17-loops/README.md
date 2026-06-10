# Day 17: Multi-Container Loops

### Code Breakdown:
* **`RUNNING_CONTAINERS=$(docker ps --format "{{.Names}}")`**: Uses the `--format` flag to clean up the output, stripping away messy headers so we get a pure text list of active container names.
* **`for CONTAINER in $RUNNING_CONTAINERS; do`**: This initiates a **FOR Loop**. It takes the list of running names, pulls them out one-by-one, saves the current one into the temporary `$CONTAINER` variable, runs the inspection code, and loops back up until the list is empty.
