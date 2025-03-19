# NewCopilotKey

## Overview

`NewCopilotKey.exe` is a customizable tool that you can trigger with a personalized shortcut to automate tasks in various applications. In this example, the tool is set up to bring Chrome into focus and switch to the second tab by sending the `Alt + 2` key combination. The tool can be personalized to fit your needs and tasks.

### Example Use Case: Chrome
- **Trigger**: Press `Win + Shift + F23` (set as the **Copilot key**).
- **Action**: Brings Chrome into focus and simulates pressing `Alt + 2` to switch to the second tab.

## Setup Process

### 1. **Install PowerToys**

To remap the **Copilot key** (`Win + Shift + F23`) for `NewCopilotKey.exe`, follow these steps using **PowerToys**:
- Download and install **PowerToys** from [GitHub](https://github.com/microsoft/PowerToys).
- Open **Keyboard Manager** in PowerToys.
- Remap `Win + Shift + F23` (or your chosen key combination) to run `NewCopilotKey.exe`.

### 2. **Remap the Copilot Key in PowerToys**

- Open **PowerToys** and go to **Keyboard Manager**.
- Add a new shortcut:
  - **Shortcut**: Set it to `Win + Shift + F23` (or any custom key combination you prefer).
  - **Action**: Set this shortcut to execute `NewCopilotKey.exe`.

Now, when you press the **Copilot key** (`Win + Shift + F23`), the tool will bring Chrome into focus and perform the desired action (e.g., switch tabs).

## How to Use `NewCopilotKey.exe`

After setting up the shortcut:
- Press the **Copilot key** (`Win + Shift + F23`).
- `NewCopilotKey.exe` will run, bringing Chrome into focus and performing actions like switching tabs.

### Customizing for Other Applications

You can easily modify the script to work with other applications or key combinations. Update the script and repackage it as an EXE if necessary.

## Packaging the Script to EXE

If you want to convert the PowerShell script (`NewCopilotKey.ps1`) to an EXE, follow these steps:

1. **Install PS2EXE**:
   Run the following command in PowerShell:
   ```powershell
   Install-Module ps2exe -Scope CurrentUser
   ```

2. **Convert the Script**:
   Navigate to your script folder and run:
   ```powershell
   ps2exe .\NewCopilotKey.ps1 .\NewCopilotKey.exe
   ```

3. **Run the EXE**:
   Execute `NewCopilotKey.exe` directly, or use a custom shortcut to trigger it.

## Requirements

- **Windows 10/11** (for PowerToys and remapping shortcuts).
- **PowerToys** (for remapping the **Copilot key**).

## License
This project is licensed under the MIT License.
