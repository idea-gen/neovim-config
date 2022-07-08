local cmp = require("cmp")
if cmp then
    cmp.setup {
        sources = {
            { name = "nvim_lsp" },
            { name = "luasnip" },
            { name = "path" },
            { name = "buffer", opttion = {
                get_bufnrs = function()
                    return vim.api.nvim_list_bufs()
                end},
            },
        },
    }
end
