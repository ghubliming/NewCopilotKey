# NewCopilotKey

## Overview

`NewCopilotKey.exe` is a tool that you can customize to perform specific actions when triggered. In the example provided, it brings Chrome into focus and switches to the second tab by sending the `Alt + 2` key combination. This executable can be personalized to suit different applications or tasks based on your needs.

## Personalization Use Case

In this example, the tool is used for **Chrome**, but it can be adapted for other applications or tasks. The main feature is the ability to **trigger a specific key sequence** (such as `Alt + 2` for Chrome) to quickly switch tabs or perform other actions in any active window.

### Example Use Case: Chrome
- **Trigger**: A custom keyboard shortcut, such as `Win + Shift + F23` (set through PowerToys).
- **Action**: Brings Chrome into focus and simulates pressing `Alt + 2` to switch to the second tab.

## Setup Process

### 1. **Install PowerToys**

To change the shortcut key for running `NewCopilotKey.exe`, use **PowerToys** for remapping:
- Download and install **PowerToys** from [GitHub](https://github.com/microsoft/PowerToys).
- Open **Keyboard Manager** within PowerToys.
- Remap your preferred shortcut (e.g., `Win + Shift + F23`) to execute `NewCopilotKey.exe`.

### 2. **Remap Your Shortcut in PowerToys**

- Open **PowerToys** and navigate to **Keyboard Manager**.
- Add a new shortcut remap:
  - **Shortcut**: Choose your preferred key combination (e.g., `Win + Shift + F23`).
  - **Action**: Set this shortcut to run `NewCopilotKey.exe`.

Now, whenever you press your custom shortcut, the tool will perform the configured task, such as focusing Chrome and sending `Alt + 2`.

## How to Use `NewCopilotKey.exe`

Once the shortcut is set up:
- Press your custom keyboard shortcut.
- `NewCopilotKey.exe` will perform the action, such as bringing Chrome into focus and switching tabs.

### Customizing for Other Applications
You can adapt the EXE to work with other applications by modifying the PowerShell script before packaging it into an EXE. For instance:
- If you need to switch to a different application or perform a different key action, simply update the script accordingly and repackage it.

## Packaging the Script to EXE

If you'd like to convert the PowerShell script (`NewCopilotKey.ps1`) into an EXE for standalone execution, follow these steps:

1. **Install PS2EXE**:
   Open PowerShell as Administrator and run:
   ```powershell
   Install-Module ps2exe -Scope CurrentUser
   ```

2. **Convert the Script**:
   Navigate to the script directory and run:
   ```powershell
   ps2exe .\NewCopilotKey.ps1 .\NewCopilotKey.exe
   ```

3. **Run the EXE**:
   You can now run `NewCopilotKey.exe` directly, either manually or by using a custom shortcut.

## Requirements

- **Windows 10/11** (for PowerToys and the remapping functionality).
- **PowerToys** (for remapping shortcut keys).

## License
This project is licensed under the MIT License.