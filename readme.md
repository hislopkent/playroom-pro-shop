# ⛳ The Playroom Pro Shop

Welcome to the control center for **The Playroom Pro Shop** — a dual-purpose high-fidelity golf simulator and family entertainment hub.

## 🛠️ The Gear

### 🟢 Hitting Station
* **Hitting Net:** [The Net Return Pro 8](https://www.thenetreturn.com/)
    * *Safety:* No Fly Zone Extension + Side Barriers
* **Turf:** Fiberbuilt Grass Series (Hourglass)
* **Launch Monitor:** FlightScope Mevo Gen 2 + Pro Package + Face Impact

### 🖥️ The Engine (HP Z640 Workstation)
* **GPU:** NVIDIA RTX 5060 (Gigabyte Windforce)
    * *Power Mod:* Dual 6-pin to 8-pin Adapter
* **CPU:** Dual Intel Xeon E5-2690 v3 (24 Cores)
* **Displays:**
    1.  49" Ultrawide (Office Command)
    2.  27" Vertical (Code/Discord)
    3.  **Ghost Monitor:** 4K HDMI Dummy Plug (The Simulator Feed)

### 📺 The Viewing Deck
* **Display:** 50-inch 1080P TV soon to be upgrade to 65-inch 4K TV
* **Streaming:** Moonlight (Client) <-> Sunshine (Host)
* **Control:** Amazon Fire HD 10 Tablet (To be mounted to TV)

---

## 💡 Why the RTX 5060?

For this specific Z640 build, the **RTX 5060** was chosen as the "Value King" for three critical reasons:

1.  **Power Safety (TDP):** The HP Z640 uses a proprietary power supply with limited rail amperage. The RTX 5060 draws only ~115W-140W, which is perfectly safe when adapting the Z640's dual 6-pin connectors (rated for 150W combined). Higher-end cards (like the 5070) risk tripping the workstation's over-current protection.
2.  **DLSS 4 Upscaling:** Driving a 65-inch 4K TV requires immense processing power. The 5060 features NVIDIA's latest DLSS 4 AI upscaling, allowing us to render the golf simulators at 1080p for high speed, then instantly upscale them to 4K for a crisp image on the big screen.
3.  **AV1 Encoding:** This card supports the modern AV1 video codec. This ensures the stream sent from the office PC to the TV is higher quality and lower latency than older cards, eliminating "lag" during the swing.

---

## 🚀 "Open The Shop" (BETA: Automation still in testing waiting on hardware)

To keep the office monitors free for work, the simulator runs in a "Headless" state.

1.  **The Ghost:** A dummy HDMI plug creates a virtual 4K display.
2.  **The Script:** Running `scripts/open_shop.bat` launches the software and uses `nircmd` to snap the window to the hidden 4K display.
3.  **The Stream:** Sunshine captures *only* the Ghost Monitor output, beaming a perfect 4K signal to the TV.

## 🎮 Remote Controls (Beta: Still testing and coding)

Custom Unified Remote panels are located in `/remotes`.

---

## 📸 The Setup Gallery

| Hitting Bay | Command Station | Control Panel |
| :---: | :---: | :---: |
| ![Hitting Bay](images/IMG_0770.jpeg) | ![PC Setup](images/IMG_0823.jpeg) | ![Tablet Mount](images/setup_tablet_mount.jpg) |
| *Net Return + Mevo+* | *Z640 + Ghost Monitor* | *Fire HD 10 + Mount* |

* **Awesome Golf:** Simplified interface for kids and practice.
* **E6 Connect:** Full simulation (came with Flightscope mevo Gen 2) controls (Mulligans, Aim, Club Selection).
* **FS Golf PC App:** Powerful practice software with customization and video capacilities.
* **GS Pro:** This is a potential future add but will need to limits 4k graphic at that time due to the GPU. 
