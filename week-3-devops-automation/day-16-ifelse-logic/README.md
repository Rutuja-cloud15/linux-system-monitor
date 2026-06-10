# Day 16: Variables & Conditional IF/ELSE Logic

### Code Breakdown:
* **`STOPPED_COUNT=$(...)`**: This is a **Variable**. It executes a background Docker command, counts the stopped containers, and stores that number in a temporary memory box named `STOPPED_COUNT`.
* **`if [ "$STOPPED_COUNT" -gt 0 ]; then`**: This is a conditional fork in the road. It checks if our variable is **G**reater **T**han (`-gt`) 0. 
  * If true, it runs the cleanup.
  * If false, it hits the `else` block and skips the cleanup entirely to save system resources.
