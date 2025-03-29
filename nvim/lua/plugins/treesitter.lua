return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = { 
            "bash", 
            "c", 
			"c_sharp", 
			"cmake", 
			"make", 
            "diff", 
			"editorconfig", 
            "html", 
            "lua", 
            "markdown", 
            "markdown_inline", 
            -- "query", 
            "vim", 
            "vimdoc",
            "javascript",
			"typescript", 
            "regex",
            "sql",
            "json",
            "groovy",
            "gitignore",
            "yaml",
            "css",
            "scss",
			"xml" 
        },
        -- autoinstall languages that are not installed
        auto_install = true,
        highlight = {
            enable = true
        },
        indent = { enable = true }
    }
}

