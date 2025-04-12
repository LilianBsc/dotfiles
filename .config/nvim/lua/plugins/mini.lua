return { 
    'echasnovski/mini.nvim',
    version = '*',
    config = function()
        local logo = [[
   _..._         _..._         _..._         _..._   
 .'     `.     .::'   `.     .::::  `.     .::::. `. 
:         :   :::       :   ::::::    :   :::::::.  :
:         :   :::       :   ::::::    :   ::::::::  :
`.       .'   `::.     .'   `:::::   .'   `::::::' .'
  `-...-'       `':..-'       `'::.-'       `'::'-'  

                  |\| [- () \/ | |\/|
        ]]
        require("mini.icons").setup()
        require("mini.starter").setup({
            header = logo
        })
        require("mini.tabline").setup()
        require("mini.comment").setup()
        require("mini.completion").setup()
    end
}
