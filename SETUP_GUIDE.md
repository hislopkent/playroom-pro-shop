# 🛠️ Setup Guide: The Playroom Pro Shop

Follow these steps to configure the hardware, streaming, and automation.

## Phase 1: Hardware Installation (HP Z640)

1.  **Power Adapter:**
    * Locate the two black 6-pin power cables inside the Z640 case.
    * Connect both into the **Dual 6-Pin Female to 8-Pin Male Adapter**.
    * Plug the 8-pin end into the **RTX 5060**.
2.  **Dummy Plug:**
    * Insert the **HDMI Dummy Plug** into the RTX 5060.
    * **Windows Settings:** Go to *System > Display*. Select the new display (likely Display 3) and set Resolution to **3840 x 2160** (4K).
    * **Extension:** Ensure "Multiple Displays" is set to "Extend desktop to this display."

## Phase 2: Software & Automation

### 1. Install Tools
* **NirCmd:** Download `nircmd.exe` and place it in `C:\Windows\` (or in this repo's `/scripts` folder and add to PATH).
* **Unified Remote Server:** Install on the Z640.

### 2. Configure Sunshine (Host)
1.  Open Sunshine Web UI (`https://localhost:47990`).
2.  **Audio/Video Tab:**
    * Find "Output Name".
    * Run `tools/dxgi-info.exe` (in Sunshine folder) to find the ID of your Dummy Plug (e.g., `\\.\DISPLAY3`).
    * Enter that ID into "Output Name". This forces Sunshine to *only* stream the dummy plug.

### 3. Configure Scripts
1.  Open `scripts/open_shop_e6.bat` and `scripts/open_shop_ag.bat`.
2.  Update the `X_POS` variable.
    * *Tip:* If your main screens are 5120px wide total, set `X_POS=5120`.

## Phase 3: The Tablet (Fire HD 10)

### 1. Unlock the Tablet
* **Tool:** Use **Fire Toolbox** (PC Software) to remove Amazon ads and install Google Play Services.
* **Install:** Download **Unified Remote (Full)** from the Google Play Store.

### 2. Load Custom Remotes
1.  On the Z640, locate the Unified Remote custom folder:
    * `C:\ProgramData\Unified Remote\Remotes\Custom\`
2.  Copy the `remotes/PlayroomProShop` folder from this repo into that directory.
3.  Restart the Unified Remote Server.

### 3. Mounting
* Install the **Soundbar Rails** to the bottom VESA holes of the TV.
* Bolt the **StarTech Tablet Adapter** to the rails.
* Run the white USB power cable to the TV's USB port.
