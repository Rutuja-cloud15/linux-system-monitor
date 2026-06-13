# Day 24: Secure Shell (SSH) Cloud Tunnelling

Today I successfully established a live cryptographic tunnel into an AWS EC2 instance.

### 🛠The SSH Command Breakdown
`ssh -i devops-key.pem ubuntu@<PUBLIC_IP>`

* `ssh`: Invokes the Secure Shell utility engine.
* `-i devops-key.pem`: Explicitly points to our private cryptographic identity passport (requires strict `chmod 400` permissions).
* `ubuntu`: The default non-root admin service account pre-baked into standard AWS Ubuntu AMIs.
* `@<PUBLIC_IP>`: The unique external routing address pointing to our virtual machine's location on the public internet backbone.
