# Cron Jobs & Automated Scheduling

### Core Syntax Cheat Sheet
The crontab syntax uses 5 fields to determine runtime schedules:
`[Minute] [Hour] [Day of Month] [Month] [Day of Week] /path/to/script.sh`

### 🛠️ Key Commands Used:
* **`crontab -e`**: Opens the active user's cron schedule configuration file for editing.
* **`crontab -l`**: Lists all active running scheduled tasks without opening the file.
* **`crontab -r`**: Completely erases all scheduled tasks for the current user.
* **`realpath <file>`**: Extracts the absolute system path required by the background cron executor.
