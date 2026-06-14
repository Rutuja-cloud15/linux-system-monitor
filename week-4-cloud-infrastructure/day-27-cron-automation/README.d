# Day 27: Background Automation via Linux Cron Daemons

Today I transitioned our cloud metric gathering pipeline from manual execution to autonomous, background scheduling using the Linux Cron scheduling system.

### ⚙️utomation Architecture
* **Cron Daemon (`crond`)**: A persistent background service that interrogates the system crontab file every 60 seconds to fire off scheduled commands.
* **The Every-Minute Routine**: Configured a `* * * * *` execution expression to enforce continuous state updates.
* **Absolute Path Rule**: Because Cron executes in a stripped-down, isolated shell environment without standard user environment variables, all script triggers and commands must utilize absolute directory pathways to avoid path resolution failures.
