# ubuntu-usb-notifier
A lightweight background bash script for Ubuntu that monitors hardware connections to instantly play a custom audio sound and push a desktop notification banner when your specific pen drive is inserted.

## Setup Instructions

### 1. Get your USB UUID
Plug in your USB drive and find its unique ID by running:
```bash
lsblk -o NAME,LABEL,UUID
```

### 2. Configure the Script
* Open `usb_welcome.sh` and replace `YOUR_USB_UUID_HERE` with your drive's actual UUID.
* Customize the notification text and sound file path inside the loop.
* [Suggestion: You can use Yamate Kudasai audio too 😂]

### 3. Make Executable
```bash
chmod +x usb_welcome.sh
```

### 4. Run on Startup
* Open **Startup Applications** in Ubuntu.
* Click **Add**.
* Set the command to: `bash /path/to/your/usb_welcome.sh`
