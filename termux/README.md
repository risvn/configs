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



## Basic Usage
termux-battery-status
termux-camera-info
termux-clipboard-get
termux-clipboard-set "hello"
termux-vibrate
termux-notification --title "Hello" --content "This is from Termux"
termux-torch on
termux-torch off




Most commands follow the pattern:
termux-[function-name] [options]


```bash
termux-notification --title "Warning" --content "Low Battery" --priority high
termux-battery-status
termux-camera-info
```



