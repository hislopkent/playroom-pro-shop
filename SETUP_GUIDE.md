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
    * **Windows Settings:** Go to *System > Display*. Select the new display (likely Display 3) and set Resolution to **3840 x 2160** (4K).
    * **Extension:** Ensure "Multiple Displays" is set to "Extend desktop to this display."

## Phase 2: Software & Automation

### 1. Install Tools
* **NirCmd:** Download `nircmd.exe` and place it in `C:\Windows\` (or in this repo's `/scripts` folder and add to PATH).
* **Unified Remote Server:** Install on the Z640.

### 2. Network Configuration (Mevo+ & UniFi)
**Goal:** Connect Mevo+ to the dedicated 5GHz UniFi SSID so the PC can see it via Ethernet.

1.  **UniFi Setup:**
    * Create a **New Wi-Fi Network** (e.g., "Mevo_Link").
    * **Frequency:** Lock to **5GHz Only** (Mevo+ Gen 2 prefers this for bandwidth/interference).
    * **Security:** WPA2/WPA3 Personal.
    * *Optional:* Isolate to a specific VLAN if you want to keep IoT traffic separate.
2.  **Mevo+ Pairing:**
    * Turn on the Mevo Gen 2. Connect your phone to the Mevo's internal Wi-Fi.
    * Open **FS Golf App** on your phone.
    * Go to **Settings > Wi-Fi Source**.
    * Select **"Network"** (not Direct) and enter the credentials for your dedicated UniFi SSID.
    * The Mevo Gen 2 will reboot and connect to your UniFi AP.
3.  **PC Check:**
    * Ensure the Z640 is connected via Ethernet to the same UniFi network (or allows cross-VLAN traffic).
    * Launch GSPro/E6; they should auto-discover the Mevo+ on the LAN.

### 3. Configure Sunshine (Host)
1.  Open Sunshine Web UI (`https://localhost:47990`).
2.  **Audio/Video Tab:**
    * Find "Output Name".
    * Run `tools/dxgi-info.exe` (in Sunshine folder) to find the ID of your Dummy Plug (e.g., `\\.\DISPLAY3`).
    * Enter that ID into "Output Name". This forces Sunshine to *only* stream the dummy plug.

### 4. Configure Scripts
1.  Open `scripts/open_shop_e6.bat` and `scripts/open_shop_ag.bat`.
2.  Update the `X_POS` variable.
    * *Tip:* If your main screens are 5120px wide total, set `X_POS=5120`.

## Phase 3: The Tablet (Fire HD 10)

### 1. Unlock the Tablet
* **Tool:** Use **Fire Toolbox** (PC Software) to remove Amazon ads and install Google Play Services.
* **[ ] Install Google Services:** (Play Store)
* **[ ] Remove Lockscreen Ads:** (Eliminate swipe-to-unlock delays)
* **[ ] Custom Launcher:** (Install Nova Launcher for a clean interface)
* **[ ] Disable OTA Updates:** (Prevent Amazon from undoing your work)
* **[ ] Developer Options:** Enable "Stay Awake" so the control panel is always ready.

### 2. Load Custom Remotes
1.  On the Z640, locate the Unified Remote custom folder:
    * `C:\ProgramData\Unified Remote\Remotes\Custom\`
2.  Copy the `remotes/PlayroomProShop` folder from this repo into that directory.
3.  Restart the Unified Remote Server.

### 3. Mounting
* Install the **Soundbar Rails** to the bottom VESA holes of the TV.
* Bolt the **StarTech Tablet Adapter** to the rails.
* Run the white USB power cable to the TV's USB port.
