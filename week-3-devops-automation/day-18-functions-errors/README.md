# Day 18: Functions & Production Error Handling

### Code Breakdown:
* **`alert_user() { ... }`**: This is a **Function**. It lets us wrap up an alert layout design once, and call it anywhere in our script using custom text arguments (`$1` and `$2`) instead of duplicating code.
* **`> /dev/null 2>&1`**: This is a silent redirection stream. It takes standard output (`1`) and standard errors (`2`) and dumps them into a Linux virtual black hole (`/dev/null`) so native error text doesn't mess up our clean user interface.
* **`if [ $? -ne 0 ]; then`**: The special `$?` variable catches the hidden exit code of the last command. If it is **N**ot **E**qual (`-ne`) to `0`, it means Docker Desktop is turned off! The script catches this, fires the alert function, and triggers `exit 1` to halt execution safely.
