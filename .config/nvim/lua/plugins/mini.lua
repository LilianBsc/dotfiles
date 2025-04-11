return { 
    'echasnovski/mini.nvim',
    version = '*',
    config = function()
        local logo = [[
             ____
              ---|
                /|       
               / |\
              /  | \          
             /   || \
            /    | | \
           /     | |  \
          /      | |   \
         /       ||     \
        /        /       \
       /________/         \
       ________/__________--/
 ~~~   \___________________/
         ~~~~~~~~~~       ~~~~~~~~
~~~~~~~~~~~~     ~~~~~~~~~
                               ~~~~~~~~~
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
