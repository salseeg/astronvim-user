-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    -- mappings seen under group name "Buffer"
    -- ["<leader>bD"] = {
    --   function()
    --     require("astronvim.utils.status").heirline.buffer_picker(
    --       function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
    --     )
    --   end,
    --   desc = "Pick to close",
    -- },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    -- ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<F2>"] = { ":w<cr>", desc = "Save File" },
    ["<F1>"] = { ":w", name = "Save", noremap = true },
    ["<F14>"] = { ":noa w", name = "Raw Save", noremap = true },

    ["<F3>"] = { "zo", name = "Open Fold" },
    ["<C-F3>"] = { "zO", name = "Open Fold Branch" },
    ["<F15>"] = { "zR", name = "Open Fold All" },

    ["<F4>"] = { "zc", name = "Close Fold" },
    ["<C-F4>"] = { "zC", name = "Close Fold Branch" },

    ["<F7>"] = { ":Telescope grep_string<cr>", name = "Find cursor string", noremap = true },
    ["<F10>"] = { ":Lazygit<cr>", name = "Git UI" },

    ["<S-Tab>"] = { ":b#<cr>", name = "Prev Buff", noremap = true },
    ["<C-Tab>"] = { ":b#<cr>", name = "Prev Buff", noremap = true },

    ["\\\\"] = { ":Telescope buffers<cr>", name = "Buffers", noremap = true },
  },
  i = {
    ["<F1>"] = { "<Esc>:w", name = "Save", noremap = true },
    ["<F2>"] = { "<Esc>:w", name = "Save", noremap = true },

    ["<F3>"] = { "<Esc>zo<Insert>", name = "Open Fold", noremap = true },
    ["<C-F3>"] = { "<Esc>zO<Insert>", name = "Open Fold Branch" },

    ["<F4>"] = { "<Esc>zc<Up><Insert><Down>", name = "Close Fold" },
    ["<C-F4>"] = { "<Esc>zC<Up><Insert><Down>", name = "Close Fold Branch" },

    ["<S-Tab>"] = { "<Esc>:b#<cr>", name = "Prev Buff", noremap = true },
    ["<C-Tab>"] = { "<Esc>:b#<cr>", name = "Prev Buff", noremap = true },

  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
