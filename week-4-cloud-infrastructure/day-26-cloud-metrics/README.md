# Day 26: Dynamic Web-Based Cloud Monitoring Engine

Today I integrated core Linux system administration metrics collection commands directly into an automated web dashboard generator hosted on AWS.

### ⚙️rchitecture Integration
* **Data Scrapers**: Utilized standard parsing engines (`awk`, `sed`, `grep`) to filter raw text outputs from kernel monitoring utilities (`uptime`, `free`, `df`, `top`).
* **Dynamic Pipeline**: Rather than rendering output to stdout, the shell script systematically compiles an HTML file configuration layout and pushes it straight to Apache's live directory (`/var/www/html/index.html`).
* **State Interrogations**: Integrated an HTML meta refresh polling loop, triggering client-side web browser re-evaluations every 5 seconds to provide continuous real-time visibility.
