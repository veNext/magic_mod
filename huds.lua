mps = mp_level or ""
mp_text = "mp: " .. mps
mprl = 0 or ""

minetest.register_on_joinplayer(function(player)
    player:hud_add({
    hud_elem_type = "image",
    position      = {x = 0.5, y = 0.5},
    offset        = {x = 0,   y = 0},
    text      = "crosshair.png",
    alignment = 0,
    scale     = { x = 1, y = 1},
    number    = 0xFFFFFF,
})


minetest.register_globalstep(function(dtime)
player:hud_change(mp, "text", mp_text)
mp_text = "mp: " .. mps
if mps < mp_level then
if mprl == 0 then
mprl = 1
minetest.after(pm_speed, function(dtime)
mps = mps + 1
mprl = 0
end)
end
end
end)



mp = player:hud_add({
    hud_elem_type = "text",
    position      = {x = 1, y = 0.5},
    offset    = {x = -120, y = -25},
    text      = mp_text,
    alignment = 0,
    scale     = { x = 1, y = 1},
    number    = 0xFFFFFF,
   
   
})

end)

