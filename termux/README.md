# Termux API - Documentation

## 📌 What is Termux:API?

Termux:API is an add-on for Termux that provides command-line access to Android device features, like camera, SMS, battery info, location, flashlight, vibration, etc., via simple terminal commands.

It acts as a bridge between the Termux shell and native Android APIs.

---

## 📦 Requirements

1. Termux installed  
2. Termux:API app installed from F-Droid  
3. `termux-api` package installed inside Termux:

```bash
pkg install termux-api
```


*1. termux-battery-status*
Get the current battery status.
termux-battery-status

Options:
- `--percentage`: Show only the battery percentage.

*2. termux-brightness*
Set the screen brightness.
termux-brightness [value]

Options:
- `[value]`: Set the brightness to a specific value (0-255).

*3. termux-call-log*
Get the call log.
termux-call-log

Options:
- `-l [limit]`: Limit the number of call log entries.

*4. termux-camera-info*
Get information about the device's cameras.
termux-camera-info

*5. termux-camera-photo*
Take a photo using the device's camera.
termux-camera-photo [-c camera-id] [-f file-path]

Options:
- `-c [camera-id]`: Specify the camera ID (e.g., 0 for rear camera, 1 for front camera).
- `-f [file-path]`: Save the photo to a specific file path.

*6. termux-clipboard-get*
Get the current clipboard content.
termux-clipboard-get

*7. termux-clipboard-set*
Set the clipboard content.
termux-clipboard-set [text]

*8. termux-contact-list*
Get the contact list.
termux-contact-list

*9. termux-dialog*
Show a dialog box.
termux-dialog [-t title] [-s text]

Options:
- `-t [title]`: Set the dialog title.
- `-s [text]`: Set the dialog text.

*10. termux-download*
Download a file.
termux-download [url] [-o output-file]

Options:
- `[url]`: Specify the URL of the file to download.
- `-o [output-file]`: Save the file to a specific output file.

*11. termux-location*
Get the current location.
termux-location [-p provider]

Options:
- `-p [provider]`: Specify the location provider (e.g., gps, network).

*12. termux-media-player*
Control the media player.
termux-media-player [action]

Actions:
- `play`: Play the current media file.
- `pause`: Pause the current media file.
- `stop`: Stop the media player.

*13. termux-media-scan*
Scan a file and add it to the media library.
termux-media-scan [file-path]

*14. termux-notification*
Show a notification.
termux-notification [-t title] [-c content]

Options:
- `-t [title]`: Set the notification title.
- `-c [content]`: Set the notification content.

*15. termux-notification-remove*
Remove a notification.
termux-notification-remove [notification-id]

*16. termux-open*
Open a URL or file.
termux-open [url-or-file]

*17. termux-sms-inbox*
Get the SMS inbox.
termux-sms-inbox [-l limit]

Options:
- `-l [limit]`: Limit the number of SMS messages.

*18. termux-sms-send*
Send an SMS.
termux-sms-send [-n number] [-m message]

Options:
- `-n [number]`: Specify the recipient's phone number.
- `-m [message]`: Specify the SMS message.

*19. termux-sound*
Play a sound.
termux-sound [file-path]

*20. termux-telephony-call*
Make a phone call.
termux-telephony-call [-n number]



