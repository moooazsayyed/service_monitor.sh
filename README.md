# service_monitor.sh
# Service Monitor Bash Script

## Introduction

Welcome to the Service Monitor Bash Script! This script helps you monitor essential server services and ensures they remain up and running. In today's digital world, server uptime is crucial, and this script simplifies the process of keeping your services online.

## Features

- **Service Monitoring:** Continuously checks the status of specified server services.
- **Automatic Restart:** If a service is found to be down, the script will attempt to restart it automatically.
- **Customizable:** You can specify which service to monitor when running the script.
- **Email Notification:** Sends an email alert if the service couldn't be restarted after multiple attempts.

## Prerequisites

Before you begin, make sure you have the following:

- A Linux-based server where you want to monitor services.
- A basic understanding of the Linux command line.

## Usage

1. Download the script to your server.

2. Make the script executable:
   ```bash
   chmod +x service_monitor.sh
   ```

3. Run the script with the service name you want to monitor. For example, to monitor the Apache2 service, use:
   ```bash
   ./service_monitor.sh apache2
   ```

4. The script will continuously check the service status and attempt to restart it if it's down.

5. You'll receive an email notification if the service couldn't be restarted after multiple attempts.

## Configuration

You can customize the script by editing the following parameters in the script file:

- `service_name`: The name of the service you want to monitor.
- `max_attempts`: The maximum number of restart attempts before sending an email notification.
- `notification_email`: The email address to which notifications will be sent.

## Example

Here's an example of monitoring the Apache2 service:

```bash
sudo ./service_monitor.sh apache2
```


## Acknowledgments

This script was created as part of the Bash Friday project, dedicated to exploring and mastering my Bash scripting for cloud and devops.

Happy server monitoring! 🚀
