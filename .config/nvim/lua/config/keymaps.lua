vim.keymap.set("n", "\\", function() require("oil").toggle_float() end, {desc="Open Parent Directory in Oil"})
vim.keymap.set("n","gl", function() vim.diagnostic.open_float() end, {desc="Open Diagnostic in float"})
