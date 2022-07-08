require("nvim-lsp-installer").setup({
    ensure_installed = {"sumneko_lua"},
    automatic_installation = true,
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})
