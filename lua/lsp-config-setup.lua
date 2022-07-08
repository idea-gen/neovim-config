local on_attach = function(_, bufnr)
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set("n", "ff", vim.lsp.buf.formatting, bufopts)
end
-- Advertising capabilities to lSP servers
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
require("lspconfig").clangd.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}
require("lspconfig").eslint.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}
require("lspconfig").pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}
require("lspconfig").sumneko_lua.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim", "use" },
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
}
