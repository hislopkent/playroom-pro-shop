# 🛠️ Setup Guide: The Playroom Pro Shop

Follow these steps to configure the hardware, streaming, and automation.

## Phase 1: Hardware Installation (HP Z640)

1.  **Power Adapter (CRITICAL):**
    * **Do not** try to power this card with a single cable. The "Overclocked" Ti model requires stable power.
    * Locate the **two** black 6-pin power cables inside the Z640 case.
    * Connect **BOTH** into the Dual 6-Pin Female to 8-Pin Male Adapter.
    * Plug the 8-pin end into the PNY RTX 5060 Ti.
2.  **Dummy Plug:**
    * Insert the **HDMI Dummy Plug** into the RTX 5060.
    * **Windows Settings:** Go to *System > Display*. Select the new display (Display 3).
    * **Resolution:** Set to **1920 x 1080** (Recommended for 1080p TVs).
    * **Extension:** Ensure "Multiple Displays" is set to "Extend desktop to this display."

## Phase 2: Software & Automation

### 1. Install Tools
* **NirCmd:** Download `nircmd.exe` and place it in `C:\Windows\` (or in this repo's `/scripts` folder).
* **Dual Monitor Tools (DMT):** Install to default directory.
    * *Config:* Set `DMT:Cursor:LockCursor` to a hotkey if needed (Scripts handle this automatically).

### 2. Configure Graphics (Crucial for Dual Monitor)
To ensure the Sim runs smooth without slowing down your 49" Ultrawide:
1.  Open **NVIDIA Control Panel**.
2.  Go to **3D Settings > Manage 3D Settings**.
3.  Select the **Program Settings** tab.
4.  Add your golf apps (`GSPro.exe`, `E6Connect.exe`, `AwesomeGolfSimulator.exe`, `FlightScopeVideoTeachingApp.exe`).
5.  For *each* app, scroll down to **Vertical Sync** and set it to **On**.
6.  Click **Apply**.

### 3. Configure Scripts
1.  Open the `.bat` files in the `scripts/` folder (`open_shop_gspro.bat`, etc.).
2.  **Verify Coordinates:**
    * `X_POS`: Ensure this matches the total width of your main monitors (e.g., 5120).
    * `WIDTH/HEIGHT`: Ensure this matches your Dummy Plug (1920 / 1080).
3.  **Verify Cursor Size:**
    * Use `-Size 64` for 1080p Screens (Standard TV).
    * Use `-Size 100` if you upgrade to a 4K TV.
    * *Example:* `powershell ... -File "%~dp0SetCursorSize.ps1" -Size 64`

## Phase 3: The Dashboard (Playnite)

### 1. Install & Configure
* Install **Playnite**.
* **Settings > General:** Check "Start Playnite in Fullscreen Mode."
* **Settings > Appearance > Fullscreen Mode:** Set **Target Monitor** to your Dummy Plug.

### 2. Add Games
1.  **Add Game > Manually.**
2.  **Name:** e.g., "GSPro".
3.  **Action:** File > Select your `open_shop_gspro.bat` script.
4.  **Installation Tab:** Check the **"Installed"** box.
5.  **Media:** Download cover art.

### 3. "Close Shop" Button
1.  Create a new game named "Close Shop".
2.  Point it to `scripts/close_shop.bat`.
3.  This allows you to kill all processes and reset the mouse directly from the TV.
