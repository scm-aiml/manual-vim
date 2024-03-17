require("conform").setup({
    notify_on_error = false,
    format_on_save = {
        timeout_ms = 1000,
        lsp_fallback = true,
    },
    formatters_by_ft = {
        lua = { "stylua" },
        python = { "black" },
        -- Add more formatters as needed
    },
})