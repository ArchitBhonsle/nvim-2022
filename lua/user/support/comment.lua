local comment = require('Comment')
comment.setup()

comment.setup({
	pre_hook = function(ctx)
		local utils = require('Comment.utils')

		local location = nil
		if ctx.ctype == utils.ctype.block then
			location = require('ts_context_commentstring.utils').get_cursor_location()
		elseif ctx.cmotion == utils.cmotion.v or ctx.cmotion == utils.cmotion.V then
			location = require('ts_context_commentstring.utils').get_visual_start_location()
		end

		return require('ts_context_commentstring.internal').calculate_commentstring({
			key = ctx.ctype == utils.ctype.line and '__default' or '__multiline',
			location = location,
		})
	end,
})

local api = require('Comment.api')

vim.keymap.set(
	'n',
	'<A-/>',
	function() return vim.v.count == 0 and api.toggle_current_linewise() or api.toggle_linewise_count() end
)
vim.keymap.set(
	'n',
	'<A-?>',
	function() return vim.v.count == 0 and api.toggle_current_blockwise() or api.toggle_blockwise_count() end
)

vim.keymap.set('x', '<A-/>', '<Plug>(comment_toggle_linewise_visual)')
vim.keymap.set('x', '<A-?>', '<Plug>(comment_toggle_blockwise_visual)')
