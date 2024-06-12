local process = require("@lune/process")

local help_command = require("./commands/help")

for _, arg in process.args do
	if arg == "help" then
		help_command()
	end
end