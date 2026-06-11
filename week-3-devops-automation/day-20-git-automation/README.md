#  Day 20: Git Automation Engine

### Advanced Logic Notes:
* **`date "+%Y-%m-%d %H:%M:%S"`**: Generates a live timestamp format (Year-Month-Day Hour:Minute:Second) to create unique, trackable commit tracking logs automatically.
* **`git diff-index --quiet HEAD --`**: A silent inspection flag that verifies if any changes exist. If zero changes are detected, it exits early to save system processing time.
* **Conditional Pipeline Tracking**: Captures failures or expired personal access tokens natively via exit statuses (`$?`).
