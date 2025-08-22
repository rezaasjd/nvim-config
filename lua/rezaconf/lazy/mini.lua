return {
    'echasnovski/mini.files',
    version = '*',
    config = function()
        require("mini.files").setup({
            mappings = {
                close = "q",
            },
        })
    end,
}
