local QBCore = exports['qb-core']:GetCoreObject()

local function applyEffects(recoilValue, shakeIntensity)
    local ped = PlayerPedId()
    local pitch = GetGameplayCamRelativePitch()
    local newPitch = pitch + recoilValue

    SetGameplayCamRelativePitch(newPitch, 0.2)

    ShakeGameplayCam("SMALL_EXPLOSION_SHAKE", shakeIntensity)

    print("[Volt-Recoil] Applied recoil: " .. recoilValue .. " | Shake Intensity: " .. shakeIntensity)
end

CreateThread(function()
    while true do
        Wait(0)
        local ped = PlayerPedId()

        if IsPedShooting(ped) then
            local weaponHash = GetSelectedPedWeapon(ped)
            local effects = Config.WeaponEffects[weaponHash] or { recoil = Config.DefaultRecoil, shake = Config.DefaultShake }

            print("[Volt-Recoil] Weapon fired: " .. weaponHash .. " | Recoil: " .. effects.recoil .. " | Shake: " .. effects.shake)

            applyEffects(effects.recoil, effects.shake)
        end
    end
end)
