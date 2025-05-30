require "nvchad.options"

local o = vim.o
local g = vim.g

-- WSL2 Clipboard Sync
g.clipboard = {
  name = "WslClipboard",
  copy = {
    ["+"] = { "clip.exe" },
    ["*"] = { "clip.exe" },
  },
  paste = {
    ["+"] = {
      "/mnt/c/Windows/System32/WindowsPowerShell/v1.0///powershell.exe",
      "-c",
      '[Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    },
    ["*"] = {
      "/mnt/c/Windows/System32/WindowsPowerShell/v1.0///powershell.exe",
      "-c",
      '[Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    },
  },
  cache_enabled = false,
}
