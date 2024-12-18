Config = {}

-- Define recoil and screen shake values for weapons
Config.WeaponEffects = {
    [`WEAPON_PISTOL`] = { recoil = 1.8, shake = 0.2 },
    [`WEAPON_COMBATPISTOL`] = { recoil = 1.2, shake = 0.2 },
    [`WEAPON_SMG`] = { recoil = 0.8, shake = 0.2 },
    [`WEAPON_CARBINERIFLE`] = { recoil = 5.0, shake = 1.5 },
}

-- Default values for weapons not listed
Config.DefaultRecoil = 0.5
Config.DefaultShake = 0.3
