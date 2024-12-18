# Volt-Recoil

**Author:** Nevairi | VoltLabs  
**Version:** 1.0.0  
**Framework:** QBCore  
**Game:** Grand Theft Auto V (FiveM)

---

## Description

Volt-Recoil is a lightweight and customizable recoil system for weapons in FiveM. 
Designed specifically for QBCore servers, this script dynamically applies recoil effects to weapons based on their configurations
in `config.lua`. It provides an immersive shooting experience while allowing server owners to easily adjust recoil values for individual weapons.

---

## Features

- **Dynamic Recoil:** Define custom recoil values for specific weapons.
- **Default Recoil:** Automatically applies default recoil for unspecified weapons.
- **Lightweight Design:** Minimal performance impact on your server.
- **Easy to Configure:** Adjust all recoil values in `config.lua`.
- **Supports All Weapons:** Compatible with the full GTA V weapon list.

---

## Installation

1. **Download and Place the Resource:**
   - Place the `volt-recoil` folder in your server's `resources/[scripts]` directory.

2. **Update Your Server Configuration:**
   - Add the following line to your `server.cfg` file:
     ```plaintext
     ensure volt-recoil
     ```

3. **Edit Configuration:**
   - Open the `config.lua` file and define the recoil values for your desired weapons.

4. **Start Your Server:**
   - Restart your server or start the resource using the command:
     ```plaintext
     start volt-recoil
     ```

---

## Configuration

The script uses `config.lua` to manage recoil values. Example:

```lua
Config = {}