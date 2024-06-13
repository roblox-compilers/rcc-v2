local module = {}
local stdio = require("@lune/stdio")

module.replacements = {
    ["{re}"] = stdio.style("reset"),
    ["{b}"] = stdio.style("bold"),
    ["{dim}"] = stdio.style("dim"),
    ["{st}"] = "\27[9m",
    ["{un}"] = "\27[24m",
    ["{red}"] = stdio.color("red"),
    ["{green}"] = stdio.color("green"),
    ["{blue}"] = stdio.color("blue"),
    ["{yellow}"] = stdio.color("yellow"),
    ["{purple}"] = stdio.color("purple"),
    ["{cyan}"] = stdio.color("cyan"),
    ["{white}"] = stdio.color("white"),
    ["{black}"] = stdio.color("black"),
}

function module.replace(input:string)
    for k, v in pairs(module.replacements) do
        input = input:gsub(k, v)
    end
    return input
end

return module