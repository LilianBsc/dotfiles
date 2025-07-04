return { 
    'echasnovski/mini.nvim',
    version = '*',
    config = function()
        local logo = [[
            ▄ ▄                   
        ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     
        █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     
     ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     
   ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  
   █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄
 ▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █
 █▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █
     █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    
        ]]
        require("mini.icons").setup()
        require("mini.starter").setup({
            header = logo
        })
        require("mini.tabline").setup()
        require("mini.cursorword").setup()
        require("mini.pairs").setup()
        require("mini.comment").setup()
        require("mini.completion").setup()
        require("mini.splitjoin").setup()
        require("mini.surround").setup()
        require("mini.jump2d").setup()
    end
}
