local stdio = require("@lune/stdio")

local bold, reset = stdio.style("bold"), stdio.style("reset") 
local red = stdio.color("red")

local command_string = `usage: {red}rcc{reset} [command] [options] \
{bold}Commands:{reset}\
 {bold}help{reset} Opens this help menu\
 {bold}init{reset} Initialize a project\
 {bold}compile{reset} Compiles the source code\
 {bold}install{reset} Install a compiler\
 {bold}uninstall{reset} Uninstall a compiler\
 {bold}update{reset} Update a compiler\
 \
{bold}Examples:{reset}\
 {bold}rcc{reset} install roblox-py`


return function()
  stdio.write(command_string)
end