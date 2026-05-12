local jdtls = require("jdtls")

local root_dir = vim.fs.root(0, { "gradlew", "mvnw", "pom.xml", "build.gradle", ".git" })

if root_dir == nil then
  return
end

local project_name = vim.fn.fnamemodify(root_dir, ":p:h:t")
local workspace_dir = vim.fn.stdpath("data") .. "/jdtls-workspace/" .. project_name

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local config = {
  cmd = {
    "jdtls",
    "-data",
    workspace_dir,
  },

  root_dir = root_dir,
  capabilities = capabilities,
}

jdtls.start_or_attach(config)
