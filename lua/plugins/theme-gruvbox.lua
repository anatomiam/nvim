return {
    -- add gruvbox
    {
        "ellisonleao/gruvbox.nvim",
        opts = {
            transparent_mode = true,
            background_colour = "#000000",
        },
    },
    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "gruvbox",
        },
    },
}
