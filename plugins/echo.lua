
local function run(msg, matches)
  local text = matches[1]
  local b = 1

  while b ~= 0 do
    text = text:trim()
    text,b = text:gsub('^!+','') -- bot Delete ! from first of pm!
    text,b = text:gsub('^/+','') -- bot Delete / from first of pm!
    text,b = text:gsub('^#+','') -- bot Delete # from first of pm!
  end
  if is_momod(msg) then --only mods and owners can use plugin
  return text
else
  return 'برای مدیر مجاز است '
end
end
return {
  description = "Simplest plugin ever!",
  usage = "!echo [whatever]: echoes the msg",
  patterns = {
    "^!echo +(.+)$",
    "^[Ee]cho +(.+)$",
	"^بگو +(.+)$",
  }, 
  run = run 
}
