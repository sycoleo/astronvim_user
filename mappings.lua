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
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- toggle neo-tree
    ["<C-n>"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle neo-tree" },
    ["<A-j>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<A-k>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["A-J"] = {
      function() require("astronvim.utils.buffer").move(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Move buffer tab right",
    },
    ["<A-K>"] = {
      function() require("astronvim.utils.buffer").move(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Move buffer tab left",
    },
    ["s"] = { function() require("flash").jump() end, desc = "Flash" },
    ["S"] = { function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    ["r"] = {function() require("flash").remote() end, desc = "Remote Flash" },
    ["R"] = {function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    ["<C-s>"] = {function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
