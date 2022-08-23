
while true do
    local line = io.read()
    if line == nil then break end
    local m = string.match(line, [[^<h1 id="(.*)"]])
    if m then
        io.stdout:write("\n" .. m .. ": |\n")
    else
        io.stdout:write("    " .. line .. "\n")
    end
end