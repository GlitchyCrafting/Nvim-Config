local wk = require('which-key')
	wk.setup {
   		window = {
   			border = 'rounded'
   		},
        triggers = "auto"
   	}

    wk.register({
        p =    {name = 'Packer'},
        ps =   {'<cmd>PackerSync<cr>', 'Update'},
        pr =   {'<cmd>luafile /home/gc/.config/nvim/init.lua<cr>', 'Reload'},
        po =   {'<cmd>e ~/.config/nvim/lua/plugins.lua<CR>', 'Open'},

        b =    {name = 'Buffer'},
        bn =   {'<cmd>BufferLineCycleNext<CR>', 'Next Buffer'},
        bp =   {'<cmd>BufferLineCyclePrev<CR>', 'Previous Buffer'},
        bd =   {'<cmd>bdelete<CR>', 'Delete Current Buffer'},
        bb =   {'<cmd>BufferLinePick<CR>', 'Pick a Buffer'},

        w =    {'<C-w>', 'Window'},
        wv =   {name='Vertical Split'},
        ws =   {name='Horizontal Split'},
        wq =   {name='Delete Current Window'},
        ww =   {name='Cycle Active Window'},

        f =    {name = 'Files'},
        ff =   {'<cmd>Telescope find_files<CR>', 'Find'},
        fb =   {'<cmd>Telescope file_browser hidden=true<CR>', 'Browser'},
        fr =   {'<cmd>Telescope oldfiles<CR>', 'Recent'},
        fn =   {'<cmd>enew<CR>', 'New'},
        fs =   {'<cmd>up<CR>', 'Save Current'},
        fa =   {'<cmd>wa<CR>', 'Save All'},
        ft =   {'<cmd>NvimTreeToggle<CR>', 'NvimTree'},
        fo =   {'<cmd>SymbolsOutline<CR>', 'Symbols Outline'},
        fp =   {'<cmd>lua require("peek").open({})<CR>', 'Peek'},

        S =    {name = 'Select'},
        Sb =   {'<C-v>', 'Block'},
        Sa =   {name = 'Around'},
        Saw =  {'vaW', 'Word'},
        Sas =  {'vas', 'Sentence'},
        Sap =  {name = 'Par'},
        Sapa = {'vap', 'Paragraph'},
        Sape = {'va(, ab', 'Parentheses'},
        Sab =  {name = 'B'},
        Sabk = {'va[', 'Brackets'},
        Sabe = {'va{ , zB', 'Braces'},
        Saba = {'va`', 'Backticks'},
        Saa =  {'va<', 'Angle'},
        Saq =  {name = 'Quotes'},
        Saqs = {"va'", 'Single'},
        Saqd = {'va"', 'Double'},
        Si =   {name = 'Inside'},
        Siw =  {'viW', 'Word'},
        Sis =  {'vis', 'Sentence'},
        Sip =  {name = 'Par'},
        Sipa = {'vip', 'Paragraph'},
        Sipe = {'vi(, ab', 'Parentheses'},
        Sib =  {name = 'B'},
        Sibk = {'vi[', 'Brackets'},
        Sibe = {'vi{ , zB', 'Braces'},
        Siba = {'vi`', 'Backticks'},
        Sia =  {'vi<', 'Angle'},
        Siq =  {name = 'Quotes'},
        Siqs = {"vi'", 'Single'},
        Siqd = {'vi"', 'Double'},

        s =    {name = "Session"},
        sq =   {'<cmd>xa<CR>', 'Write And Quit All Buffers'},
        sk =   {'<cmd>qa!<CR>', 'Kill All Buffers Without Writing'},
        sp =   {'<cmd>Telescope projects<CR>', 'Projects'},

        u =    {name = "PopUI"},
        ud =   {'<cmd>lua require("popui.diagnostics-navigator")()<CR>', 'Diagnostics'},
        um =   {'<cmd>lua require("popui.marks-manager")()<CR>', 'Marks'},

        t =    {name = 'Text'},
        tc =   {'g~', 'Toggle Case'},
        ti =   {'g>', 'Indent'},
        tu =   {'g<', 'Unindent'},
        te =   {'<C-r>=', 'Evaluate'},
        ts =   {name = 'Spell Checking'},
        tst =  {'<cmd> setl spell!<CR>', 'Toggle'},
        tss =  {'z=', 'Suggest'},
        tn =   {'g<C-g>', 'Count'},

        m =    {'<cmd>MindOpenMain<CR>', 'Mind'},
        c =    {'<cmd>CccPick<CR>', 'Color Picker'},
    },
    {prefix = '<leader>'}
)
