return {
    "navarasu/onedark.nvim",
    lazy = true,
    config = function ()
        require('onedark').setup {
            style = 'darker',
            -- Options are italic, bold, underline, none
            -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
            code_style = {
                comments = 'none',
                keywords = 'none',
                functions = 'none',
                strings = 'none',
                variables = 'none'
            },
        }
    end
}
