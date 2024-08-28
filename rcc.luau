local process = require("@lune/process")
local fs = require("@lune/fs")

local command = process.args[1]

for _, entry in fs.readDir("./src/commands") do
    local prefix_cmd = entry:split(".")[1]

    -- print(command, prefix_cmd)
    if command == prefix_cmd then 
        require(`@commands/{prefix_cmd}`)()
    end
end 