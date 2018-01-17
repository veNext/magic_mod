dofile(minetest.get_modpath('magic_mod')..'/config.txt')

mps = mp_level or ""
mp_text = "mp: " .. mps

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
mp_text = "mp: " .. mps
player:hud_change(mp, "text", mp_text)
if mps <mp_level then
mps = mps + 0.1
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

