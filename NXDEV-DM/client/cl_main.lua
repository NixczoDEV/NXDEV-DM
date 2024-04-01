-----------------------------------------------------------------------------------
--2024-04-01--   NXDEV   --MADE BY NXICZO--   NXDEV   --2024-04-01-- NIXCZO   NXDEV   
--YOU NEED TO ADD THIS TO UR SERVER.CFG add_ace group.admin "command.msg" allow
-----------------------------------------------------------------------------------

-- CHAT:addSuggestion
---------------------------------------------
TriggerEvent('chat:addSuggestion', '/msg', "Envoyer un message à un joueur par ID", {
    { name="ID", help="ID du joueur" },
    { name="Message", help="Message à envoyer" }
})
---------------------------------------------