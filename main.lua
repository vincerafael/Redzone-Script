Citizen.CreateThread(function()
    for _, info in pairs(Config.RedZones) do
      local blip = AddBlipForRadius(info.Pos.x, info.Pos.y, info.Pos.z, info.Radius)

      SetBlipHighDetail(blip, true)
      SetBlipColour(blip, info.Colour)
      SetBlipAlpha(blip, 128)

      if info.Sprite ~= nil or info.Sprite ~= '' then
        local blip = AddBlipForCoord(info.Pos.x, info.Pos.y, info.Pos.z)
        SetBlipSprite (blip, info.Sprite)
        SetBlipColour (blip, info.Colour)
        SetBlipAsShortRange(blip, true)

        if info.Title ~= nil or info.Title ~= '' then
          BeginTextCommandSetBlipName("STRING")
          AddTextComponentString(info.Title)
          EndTextCommandSetBlipName(blip)
        end
      end
    end
end)