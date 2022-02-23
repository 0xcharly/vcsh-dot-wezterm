local wezterm = require 'wezterm'

return {
  font = wezterm.font_with_fallback({
    'PragmataProLiga Nerd Font', 'PragmataPro Liga', 'PragmataPro', 'MonoLisa',
    'Hack', 'Inconsolata',
  }),
  font_size = 16,
  line_height = 0.95,
  color_scheme = 'Dracula',
  enable_tab_bar = true,
  hide_tab_bar_if_only_one_tab = true,
  use_fancy_tab_bar = false,
  window_decorations = 'RESIZE',

  color_scheme = 'GitHub-Dark',

  colors = {
    tab_bar = {
      -- The color of the strip that goes along the top of the window
      -- (does not apply when fancy tab bar is in use)
      background = '#0b0022',

      -- The active tab is the one that has focus in the window
      active_tab = {
        -- The color of the background area for the tab
        bg_color = '#2b2042',
        -- The color of the text for the tab
        fg_color = '#c0c0c0',

        -- Specify whether you want "Half", "Normal" or "Bold" intensity for the
        -- label shown for this tab.
        -- The default is "Normal"
        intensity = 'Normal',

        -- Specify whether you want "None", "Single" or "Double" underline for
        -- label shown for this tab.
        -- The default is "None"
        underline = 'None',

        -- Specify whether you want the text to be italic (true) or not (false)
        -- for this tab.  The default is false.
        italic = false,

        -- Specify whether you want the text to be rendered with strikethrough (true)
        -- or not for this tab.  The default is false.
        strikethrough = false,
      },

      -- Inactive tabs are the tabs that do not have focus
      inactive_tab = {
        bg_color = '#1b1032',
        fg_color = '#808080',

        -- The same options that were listed under the `active_tab` section above
        -- can also be used for `inactive_tab`.
      },

      -- You can configure some alternate styling when the mouse pointer
      -- moves over inactive tabs
      inactive_tab_hover = {
        bg_color = '#3b3052',
        fg_color = '#909090',
        italic = true,

        -- The same options that were listed under the `active_tab` section above
        -- can also be used for `inactive_tab_hover`.
      },

      -- The new tab button that let you create new tabs
      new_tab = {
        bg_color = '#1b1032',
        fg_color = '#808080',

        -- The same options that were listed under the `active_tab` section above
        -- can also be used for `new_tab`.
      },

      -- You can configure some alternate styling when the mouse pointer
      -- moves over the new tab button
      new_tab_hover = {
        bg_color = '#3b3052',
        fg_color = '#909090',
        italic = true,

        -- The same options that were listed under the `active_tab` section above
        -- can also be used for `new_tab_hover`.
      },
    },
  },
  -- color_schemes = {
  --   ['GitHub-Dark'] = {

  --     -- The default text color
  --     foreground = '#c9d1d9',
  --     -- The default background color
  --     background = '#0d1117',

  --     -- Overrides the cell background color when the current cell is occupied by the
  --     -- cursor and the cursor style is set to Block
  --     cursor_bg = '#c9d1d9',
  --     -- Overrides the text color when the current cell is occupied by the cursor
  --     cursor_fg = '#0d1117',
  --     -- Specifies the border color of the cursor when the cursor style is set to Block,
  --     -- or the color of the vertical or horizontal bar when the cursor style is set to
  --     -- Bar or Underline.
  --     cursor_border = '#30363d',

  --     -- the foreground color of selected text
  --     selection_fg = '#f0f6fc',
  --     -- the background color of selected text
  --     selection_bg = 'rgba(56,139,253,0.4)',

  --     -- The color of the scrollbar "thumb"; the portion that represents the current viewport
  --     scrollbar_thumb = '#161b22',

  --     -- The color of the split lines between panes
  --     split = '#30363d',

  --     ansi = {
  --       '#484f58', '#ff7b72', '#3fb950', '#d29922', '#58a6ff', '#bc8cff',
  --       '#39c5cf', '#b1bac4',
  --     },
  --     brights = {
  --       '#6e7681', '#ffa198', '#56d364', '#e3b341', '#79c0ff', '#d2a8ff',
  --       '#56d4dd', '#f0f6fc',
  --     },

  --     -- Arbitrary colors of the palette in the range from 16 to 255
  --     indexed = {[136] = '#f0883e', [137] = '#f778ba', [138] = '#F78166'},

  --     -- Since: nightly builds only
  --     -- When the IME, a dead key or a leader key are being processed and are effectively
  --     -- holding input pending the result of input composition, change the cursor
  --     -- to this color to give a visual cue about the compose state.
  --     compose_cursor = '#f0883e',
  --   },
  -- },
}
