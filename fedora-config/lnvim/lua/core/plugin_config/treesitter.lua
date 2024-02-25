require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "java", "python", "lua", "vim"},

    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
}
