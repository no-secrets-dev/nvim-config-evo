-- Suppress rust-analyzer cancellation messages
local notify = vim.notify
vim.notify = function(msg, ...)
    if msg:match("rust%-analyzer") and msg:match("server cancelled") then
        return
    end
    notify(msg, ...)
end

