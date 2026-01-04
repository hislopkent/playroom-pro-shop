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
