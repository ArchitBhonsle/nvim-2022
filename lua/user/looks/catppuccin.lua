local catppuccin = require('catppuccin')

catppuccin.setup({
	integrations = {
		indent_blankline = {
			enabled = true,
			colored_indent_levels = true,
		},
		ts_rainbow = true,
	},
})

vim.cmd('colorscheme catppuccin')

-- base = "#1E1E2E",
-- blue = "#89B4FA",
-- crust = "#11111B",
-- flamingo = "#F2CDCD",
-- green = "#A6E3A1",
-- lavender = "#B4BEFE",
-- mantle = "#181825",
-- maroon = "#EBA0AC",
-- mauve = "#CBA6F7",
-- none = "NONE",
-- overlay0 = "#6C7086",
-- overlay1 = "#7F849C",
-- overlay2 = "#9399B2",
-- peach = "#FAB387",
-- pink = "#F5C2E7",
-- red = "#F38BA8",
-- rosewater = "#F5E0DC",
-- sapphire = "#74C7EC",
-- sky = "#89DCEB",
-- subtext0 = "#A6ADC8",
-- subtext1 = "#BAC2DE",
-- surface0 = "#313244",
-- surface1 = "#45475A",
-- surface2 = "#585B70",
-- teal = "#94E2D5",
-- text = "#CDD6F4",
-- yellow = "#F9E2AF"
