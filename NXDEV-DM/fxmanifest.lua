fx_version "cerulean"

author "NIXCZO | NXDEV"

games { "gta5" };

lua54 "yes"

client_scripts {
    "client/cl_main.lua"
}

server_script {
    "server/sv_main.lua",
    "config.lua"
}

dependencies {
    "es_extended"
}
server_scripts { '@mysql-async/lib/MySQL.lua' }