local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "ts_ls",
    "omnisharp",
    "rust_analyzer",
    "sourcekit",
    "pyright",
  },
})

-- Lua
vim.lsp.config("lua_ls", {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})
vim.lsp.enable("lua_ls")

-- TypeScript
vim.lsp.config("ts_ls", {
  capabilities = capabilities,
})
vim.lsp.enable("ts_ls")

-- C#
vim.lsp.config("omnisharp", {
  capabilities = capabilities,
  cmd = { "omnisharp" },
})
vim.lsp.enable("omnisharp")

-- Rust
vim.lsp.config("rust_analyzer", {
  capabilities = capabilities,
})
vim.lsp.enable("rust_analyzer")

-- Swift
vim.lsp.config("sourcekit", {
  capabilities = capabilities,
})
vim.lsp.enable("sourcekit")

-- Python
vim.lsp.config("pyright", {
  capabilities = capabilities,
})
vim.lsp.enable("pyright")

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    local opts = { buffer = event.buf }

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

    vim.keymap.set("n", "<leader>f", function()
      vim.lsp.buf.format({ async = true })
    end, opts)
  end,
})
