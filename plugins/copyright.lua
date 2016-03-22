do

local function run(msg, matches)
  if matches[1]:lower() == 'telemanager' or 'telemanagerplus' then --change this with anything you want
    send_document(get_receiver(msg), "./data/me/telemanager.webp", ok_cb, false) --put here sticker location(if you want)
      return [[ 
  
TeleManagerPlus (Open Source) V 3.0.0
    Advanced ManagerBot Based On TeleSeed
    
    Edited By : @ali_ghoghnoos
    
    Our Telegram Channel ID :
    @Telemanager_ch
  
    Speacial Thanks To My friends :
    @ThisIsArman
    @minaco
    @dragon_born
    and other that help me for this Bot
     GitHub :
     Https://github.com/telemanagerplus/TeleManagerPlus


 ]]
  end
end

return {
  patterns = {
    "^[!/]([Tt]elemanager)$",
    "^([Tt]elemanager)$",
    "^[!/]([Tt]elemanagerplus)$",
    "^([Tt]elemanagerplus)$",
    "^(@telemanagerplus)$",
    
    },
  run = run
}
end
