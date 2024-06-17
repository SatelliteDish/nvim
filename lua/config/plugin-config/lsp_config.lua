require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"rust_analyzer",
		"dockerls",
		"tsserver",
		"vimls"
	}
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
	capabilities = capabilities
}
require'lspconfig'.rust_analyzer.setup{
	capabilities = capabilities
}
require'lspconfig'.dockerls.setup{
	capabilities = capabilities
}
require'lspconfig'.tsserver.setup{
	capabilities = capabilities
}
require'lspconfig'.vimls.setup{
	capabilities = capabilities
}
