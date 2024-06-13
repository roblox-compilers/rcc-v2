local alsi = require("@root/libraries/ansi")
local help_message = [[
    usage: {red}rcc{re} [command] [options]
    {b}Commands:{re}
      {b}help{re}\t\topen this help menu
      {st}{b}init{re}{st}\t\tinitialize a project{re} 
      {st}{b}install{re}{st}\t\tinstall a compiler{re}
      {st}{b}uninstall{re}{st}\t\tuninstall a compiler{re}
      {st}{b}update{re}{st}\t\tupdate a compiler{re}
    {b}Options:{re}
      {b}-o{re}{st}\t\toutput directory (default: out){re}
      {b}<none>{re}{st}\t\tinput directory (default: src){re}
      {b}-d{re}{st}\t\tdebug mode{re}
    {b}Examples:{re}
      {st}{b}rcc{re}{st} {b}install{re}{st} roblox-py{re}
      {st}{b}rcc{re}{st} {b}uninstall{re}{st} roblox-py{re}
      {st}{b}rcc{re}{st} {b}update{re}{st} roblox-py{re}
      {st}{b}rcc{re}{st} {b}-o{re}{st} out{re}
      {st}{b}rcc{re}{st} {b}-o{re}{st} out src{re}
      {st}{b}rcc{re}{st} {b}include{re}{st} @roblox/roact{re}
    ]]
help_message = ansi.replace(help_message):gsub("\\t", "\t") -- Apparently escape codes don't work in multiline strings
return function()
    print(help_message)
end
