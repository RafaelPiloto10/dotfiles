function Color()
    vim.cmd[[
        if filereadable(expand('~/.vimrc_background'))
            let base16colorspace=256
            source ~/.vimrc_background
        endif
    ]]

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
        bg = "none"
    })

end

Color()
