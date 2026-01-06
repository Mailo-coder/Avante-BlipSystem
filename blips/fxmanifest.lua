-- fxmanifest.lua
fx_version 'cerulean'
game 'gta5'

author 'Avante Mailo'
description 'Ein einfaches System zur automatischen Erstellung von Kartenmarkierungen (Blips) basierend auf einer Konfigurationsdatei.'


shared_script 'config/config.lua' -- Wird von Client & Server geladen (falls benötigt)
client_script 'client/client.lua'