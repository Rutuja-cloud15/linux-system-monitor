# Cron Jobs & Automated Scheduling

### Core Syntax Cheat Sheet
The crontab syntax uses 5 fields to determine runtime schedules:
`[Minute] [Hour] [Day of Month] [Month] [Day of Week] /path/to/script.sh`

### 🛠️ Key Commands Used:
* **`crontab -e`**: Opens the active user's cron schedule configuration file for editing.
* **`crontab -l`**: Lists all active running scheduled tasks without opening the file.
* **`crontab -r`**: Completely erases all scheduled tasks for the current user.
* **`realpath <file>`**: Extracts the absolute system path required by the background cron executor.

0 0 * * * /home/YOUR_USERNAME/devops-workspace/linux-system-monitor/week-3-devops-automation/day-18-functions-errors/health_check.sh >> /home/YOUR_USERNAME/cron_output.log 2>&1

What does >> cron_output.log 2>&1 mean? Because cron runs silently in the background, it has no screen to print text onto. This code appends all text outputs and error messages from your script into a local log file named cron_output.log so you can check it later to see if it ran successfully!
