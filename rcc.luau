local process = require("@lune/process")

local help_command = require("@root/commands/help")

local command = process.args[1]
-- Could just run the module of the same name in commands but that might not be clean
if command == "help" then
	help_command()
else
    print(`Command not found: {command}`)
end
