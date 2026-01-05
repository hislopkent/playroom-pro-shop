# ⛳ The Playroom Pro Shop

Welcome to the control center for **The Playroom Pro Shop** — a dual-purpose high-fidelity golf simulator and family entertainment hub.

## 🛠️ The Gear

### 🟢 Hitting Station
* **Hitting Net:** [The Net Return Pro 8](https://www.thenetreturn.com/)
    * *Safety:* No Fly Zone Extension + Side Barriers
* **Turf:** Fiberbuilt Grass Series (Hourglass)
* **Launch Monitor:** FlightScope Mevo Gen 2 + Pro Package + Face Impact

### 🖥️ The Engine (HP Z640 Workstation)
* **GPU:** PNY GeForce RTX 5060 Ti Overclocked (16GB GDDR7)
    * *Model:* VCG5060T16DFXPB1-O (Dual Fan)
    * *Why:* 16GB VRAM is critical for 4K texture loading in GSPro/E6.
    * *Power Mod:* Dual 6-pin to 8-pin Adapter (Essential for safe power delivery on the Z640).
* **CPU:** Dual Intel Xeon E5-2690 v3 (24 Cores total)
* **RAM:** 64GB DDR4
* **Displays:**
    1.  49" Ultrawide (Office Work)
    2.  27" Vertical (Code/Discord)
    3.  **Ghost Monitor:** 4K HDMI Dummy Plug (Dedicated Simulator Feed)

### 📺 The Viewing Deck
* **Display:** 50-inch 1080P TV soon to be upgrade to 65-inch 4K TV
* **Streaming:** Moonlight (Client) <-> Sunshine (Host)
* **Control:** Amazon Fire HD 10 Tablet (To be mounted to TV)

---

## 💡 Why the PNY RTX 5060 Ti (16GB)?

The selection of the **RTX 5060 Ti 16GB** was a calculated decision to balance the HP Z640's power limits with the demands of 4K simulation.

1.  **The VRAM Necessity (16GB GDDR7):**
    * Modern golf simulators (like GSPro or E6 4K) are texture-heavy. Standard 8GB cards choke when trying to load lush fairways and trees at 4K resolution, causing "stutter" during ball flight.
    * The **16GB of GDDR7** memory ensures that high-res assets load instantly, keeping the stream buttery smooth.

2.  **Power Efficiency (The Z640 Limit):**
    * The HP Z640 power supply is older and split into limited "rails." A flagship card (like a 5080/5090) draws too much power and would trip the safety breakers.
    * The **5060 Ti** sits in the "Goldilocks Zone" — it provides high-end performance but stays within the safe wattage range of the Z640's dual 6-pin connectors.

3.  **The "Headless" Encoder:**
    * Since we are streaming the video to the TV via Sunshine, the GPU's video encoder is just as important as its raw power. This card supports **AV1 Encoding**, which sends a clearer picture to the TV with less lag than older cards.
---

### 📡 Network Architecture (UniFi)
Reliable connection is critical for simulator data transmission.
* **System:** Ubiquiti UniFi (UDM-Pro / Access Points)
* **Configuration:** Dedicated 5GHz-only SSID (`Mevo_Link`)
* **Connection Mode:** The Mevo Gen 2 is configured in **Wi-Fi Client Mode** to connect *to* the home network.
    * *Benefit:* This allows the Z640 workstation to maintain its high-speed ethernet connection for internet/streaming while communicating with the Mevo+ over the local LAN, eliminating the need to toggle Wi-Fi networks.
---

## 💭 Design Philosophy & Constraints

This setup was engineered with specific spatial and lifestyle constraints in mind.

### 1. The "Playroom Factor" (Space & Safety)
The primary location for this simulator is a shared **Kids' Playroom**. This introduced critical restrictions:
* **Zero Permanence:** The setup could not permanently dominate the room. A full DIY impact screen enclosure was ruled out because it typically requires a fixed 5-foot depth frame that cannot be easily tucked away.
* **The Solution:** [The Net Return Pro 8](https://www.thenetreturn.com/) was selected for its modularity.
    * *Small Footprint:* By angling the **Side Barriers** inward, the total active depth is significantly less than a standard enclosure.
    * *Safety:* The **No Fly Zone** extension ensures stray balls (from kids or high-handicap friends) don't damage the room, without requiring a permanent cage.

### 2. The "Streaming vs. Projection" Decision
While a full Impact Screen + Projector is the gold standard, it was not viable for this build due to:
* **Hardware Hiding:** I did not want a gaming desktop tower and overhead projector permanently mounted in a playroom.
* **Cost vs. Flexibility:** A quality projector setup is expensive and fixed.
* **The Solution:** The **Headless Streaming** architecture allows the PC to live safely in the office, while the **65-inch TV** serves as the "Display" via Moonlight. This keeps the playroom clean, quiet, and free of sensitive electronics.

### 3. The Repurposing Strategy
Efficiency was key to this build. Instead of buying a dedicated simulator PC, I leveraged existing high-end hardware:
* **The Workstation:** The **HP Z640** was already my daily driver, used for 3D modeling, [xLights](https://xlights.org/) sequence design, and personal tasks.
* **The Screens:** The **49" Ultrawide** and **27" Vertical** monitors were also existing equipment.
* **The Upgrade:** The only "new" PC hardware required was the **RTX 5060** (for modern HDMI 2.1/AV1 support) and the **Ghost Monitor Plug** to bridge the gap between the office monitors and the living room TV.

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
