require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = { 'lua_ls', 'pyright', 'clangd', 'jdtls', 'bashls' , 'omnisharp', }
})

local on_attach = function(_, _)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

    vim.keymap.set('n', 'gd', vim.lsp.definition, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_refernces, {})
    vim.keymap.set('n', 'k', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').lua_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

require('lspconfig').pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities,

}

require('lspconfig').clangd.setup {
    on_attach = on_attach,
    capabilities = capabilities,

}

require('lspconfig').jdtls.setup{
    on_attach = on_attach,
    capabilities = capabilities,

}

require('lspconfig').bashls.setup {
    on_attacj = on_attach,
    capabilities = capabilities,

}

require('lspconfig').bashls.setup {
    on_attacj = on_attach,
    capabilities = capabilities,

}
require('lspconfig').omnisharp.setup {
    on_attach = on_attach,
    capabilities = capabilities,

}


