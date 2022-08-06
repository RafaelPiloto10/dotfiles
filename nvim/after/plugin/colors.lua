-- if filereadable(expand("~/.vimrc_background"))
-- let base16colorspace=256
-- source ~/.vimrc_background
-- endif

vim.g.rafaelpiloto10_colorscheme = "simple-dark-transparent"

function Color()
    vim.opt.background = "dark"

    vim.cmd("colorscheme " .. vim.g.rafaelpiloto10_colorscheme)

    local hl = function(thing, opts)
        vim.api.nvim_set_hl(0, thing, opts)
    end

    hl("SignColumn", {
        bg = "none",
    })

    hl("ColorColumn", {
        ctermbg = 0,
        bg = "#555555",
    })

    hl("CursorLineNR", {
        bg = "None"
    })

    hl("Normal", {
        bg = "none"
    })

    hl("LineNr", {
        fg = "#5eacd3"
    })

    hl("netrwDir", {
        fg = "#5eacd3"
    })

    hl("StatusLine", {
        fg = "black"
    })

end

Color()
