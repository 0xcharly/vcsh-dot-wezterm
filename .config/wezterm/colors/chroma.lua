return {
	-- The default text color
	foreground = "#c0c8d0",
	-- The default background color
	background = "#191e25",
	-- Overrides the cell background color when the current cell is occupied by the
	-- cursor and the cursor style is set to Block
	cursor_bg = "#abb2bf",
	-- Overrides the text color when the current cell is occupied by the cursor
	cursor_fg = "#171c23",
	-- Specifies the border color of the cursor when the cursor style is set to Block,
	-- or the color of the vertical or horizontal bar when the cursor style is set to
	-- Bar or Underline.
	cursor_border = "#abb2bf",
	-- the foreground color of selected text
	selection_fg = "#171c23",
	-- the background color of selected text
	selection_bg = "#94b2f6",
	-- The color of the scrollbar "thumb"; the portion that represents the current viewport
	scrollbar_thumb = "#abb2bf",
	-- The color of the split lines between panes
	split = "#161b22",
	ansi = {
		"#6e7681",
		"#d06f79",
		"#a3be8c",
		"#ffaa79",
		"#58a6ff",
		"#cbaff9",
		"#94e2d5",
		"#abb2bf",
	},
	brights = {
		"#484f58",
		"#ed8796",
		"#b1d196",
		"#f0d399",
		"#8bc4f3",
		"#b4befe",
		"#89dceb",
		"#8b949e",
	},
	-- Arbitrary colors of the palette in the range from 16 to 255
	indexed = { [136] = "#e0823d", [137] = "#e275ad", [138] = "#ec775c" },
	-- Since: nightly builds only
	-- When the IME, a dead key or a leader key are being processed and are effectively
	-- holding input pending the result of input composition, change the cursor
	-- to this color to give a visual cue about the compose state.
	compose_cursor = "#f0883e",
	-- The color of the strip that goes along the top of the window
	-- (does not apply when fancy tab bar is in use)
	tab_bar = {
		background = "#191e25",
		-- The active tab is the one that has focus in the window
		active_tab = {
			-- The color of the background area for the tab
			bg_color = "#539bf5",
			-- The color of the text for the tab
			fg_color = "#191e25",
			-- Specify whether you want "Half", "Normal" or "Bold" intensity for the
			-- label shown for this tab.
			-- The default is "Normal"
			intensity = "Normal",
			-- Specify whether you want "None", "Single" or "Double" underline for
			-- label shown for this tab.
			-- The default is "None"
			underline = "None",
			-- Specify whether you want the text to be italic (true) or not (false)
			-- for this tab.  The default is false.
			italic = false,
			-- Specify whether you want the text to be rendered with strikethrough (true)
			-- or not for this tab.  The default is false.
			strikethrough = false,
		},
		-- Inactive tabs are the tabs that do not have focus
		inactive_tab = {
			bg_color = "#22272e",
			fg_color = "#768390",
			-- The same options that were listed under the `active_tab` section above
			-- can also be used for `inactive_tab`.
		},
		-- You can configure some alternate styling when the mouse pointer
		-- moves over inactive tabs
		inactive_tab_hover = {
			bg_color = "#2d333b",
			fg_color = "#f0f6fc",
			-- The same options that were listed under the `active_tab` section above
			-- can also be used for `inactive_tab_hover`.
		},
		-- The new tab button that let you create new tabs
		new_tab = {
			bg_color = "#2d333b",
			fg_color = "#8b949e",
			-- The same options that were listed under the `active_tab` section above
			-- can also be used for `new_tab`.
		},
		-- You can configure some alternate styling when the mouse pointer
		-- moves over the new tab button
		new_tab_hover = {
			bg_color = "#161b22",
			fg_color = "#f0f6fc",
			-- The same options that were listed under the `active_tab` section above
			-- can also be used for `new_tab_hover`.
		},
	},
}
