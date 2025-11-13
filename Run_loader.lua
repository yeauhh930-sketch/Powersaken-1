-- loader for Powersaken (fetches powersaken-1)
pcall(function()
    local url = "https://raw.githubusercontent.com/yeauhh930-sketch/Powersaken/main/powersaken-1"
    
    local ok, resp = pcall(function()
        return game:HttpGet(url, true)
    end)
    
    if not ok or not resp or resp == "" then
        warn("Failed to fetch the loader from GitHub")
        return
    end

    local chunk, err = loadstring(resp)
    if not chunk then
        warn("loadstring failed:", err)
        return
    end

    pcall(chunk)
end)
