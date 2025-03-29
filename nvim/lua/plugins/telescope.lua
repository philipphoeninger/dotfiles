return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        -- local vars
        local builtin = require("telescope.builtin")
        local actions = require("telescope.actions")

        -- basic keymaps
        vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
        vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
        vim.keymap.set("n", "<leader>fvf", builtin.git_files, { desc = "Telescope git files" })
        vim.keymap.set("n", "<leader>fvs", builtin.git_status, { desc = "Telescope git status" })
        vim.keymap.set("n", "<leader>fp", function() -- search for every file installed in a plugin
            builtin.find_files {
                cws = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy")
            }
        end
        )
        vim.keymap.set("n", "<leader>fn", function() -- open vim configs from anywhere
            builtin.find_files {
                cwd = vim.fn.stdpath("config")
            }
        end
        )
        
        -- setup multigrep
        require("philipp.telescope.multigrep").setup()

        -- setup telescope
        require("telescope").setup {
            defaults = {
                mappings = {
                    i = {
                        -- remap selection moves
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-j>"] = actions.move_selection_next
                    }
                },
                path_display = {
                    truncate = 5,
                    shorten = {
                        len = 3,
                        exclude = { -1, -2, -3 }
                    },
                    filename_first = {
                        reverse_directories = true
                    }
                },
            },
            pickers = {
                find_files = {
                    file_ignore_patterns = {
                        'node_modles',
                        '.git',
                        '.angular'
                    },
                    hidden = true -- find hidden files
                    --mappings = { i = { ["<C-l>"] = actions.select_default } }
                },
            },
            live_grep = {
                file_ignore_patterns = {
                    "node_modules",
                    ".git",
                    ".angular"
                },
                additional_args = function(_)
                    return { "--hidden" }
                end
            }
        }
    end,
    additional_args = function(_)
        return { "--hidden" }
    end
}

