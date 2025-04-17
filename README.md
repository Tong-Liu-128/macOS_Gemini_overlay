# MacOS Gemini Overlay

A simple macOS overlay application for pinning `gemini.google.com` to a dedicated window and key command `option+space`.

## Quick Start

To run the application directly:

1. Open Terminal
2. Navigate to this directory
3. Run `./macos-gemini-overlay.sh`

## Creating a Clickable App

To create a proper clickable macOS application:

### Option 1: Using Platypus (recommended)

1. Download and install Platypus from: https://sveinbjorn.org/platypus
2. Open Platypus
3. Set the following options:
   - Script Type: Shell
   - Script Path: Select `macos-gemini-overlay.sh`
   - App Name: Gemini Overlay
   - Interface: None
   - Icon: You can use the file `macos_gemini_overlay/logo/icon.icns`
   - Identifier: com.yourname.geminioverlay
   - Check "Run in background"
4. Click "Create App" and select a destination

### Option 2: Using Script Editor

1. Open Script Editor (found in Applications/Utilities)
2. Paste the following:
   ```applescript
   do shell script "cd " & quoted form of (POSIX path of (path to me as text) & "Contents/Resources") & " && ./macos-gemini-overlay.sh"
   ```
3. Save as an Application
4. Create a folder structure as follows:
   ```
   YourApp.app/
     Contents/
       Resources/
         (place all files from this folder here)
   ```

## Usage

Once installed, press `Option+Space` to show/hide the Gemini overlay window. 