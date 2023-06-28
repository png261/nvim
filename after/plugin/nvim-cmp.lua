local cmp = require'cmp'

cmp.setup({
    completion = {
      autocomplete = false
    },
    window = {
         documentation = cmp.config.disable
    }
})
