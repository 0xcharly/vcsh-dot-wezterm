local wezterm = require 'wezterm'
local colorscheme = require 'colors.github_dark'

-- The filled in variant of the < symbol
local SLANTED_LEFT = utf8.char(0xe0ba)

-- The filled in variant of the > symbol
local SLANTED_RIGHT = utf8.char(0xe0b8)

wezterm.on('format-tab-title',
           function(tab, tabs, panes, config, hover, max_width)
  local edge_background = colorscheme.tab_bar.background
  local background = colorscheme.tab_bar.inactive_tab.bg_color
  local foreground = colorscheme.tab_bar.inactive_tab.fg_color

  if tab.is_active then
    background = colorscheme.tab_bar.active_tab.bg_color
    foreground = colorscheme.tab_bar.active_tab.fg_color
  elseif hover then
    background = colorscheme.tab_bar.inactive_tab_hover.bg_color
    foreground = colorscheme.tab_bar.inactive_tab_hover.fg_color
  end

  local edge_foreground = background

  -- ensure that the titles fit in the available space,
  -- and that we have room for the edges.
  local title = wezterm.truncate_right(tab.active_pane.title, max_width - 4)

  return {
    {
      Background = {
        Color = (tab.tab_index == 0 and background or edge_background),
      },
    }, {Foreground = {Color = edge_foreground}}, {Text = SLANTED_LEFT},
    {Background = {Color = background}}, {Foreground = {Color = foreground}},
    {Text = ' ' .. title .. ' '}, {Background = {Color = edge_background}},
    {Foreground = {Color = edge_foreground}}, {Text = SLANTED_RIGHT},
  }
end)

return {
  font = wezterm.font_with_fallback({
    'PragmataProLiga Nerd Font', 'PragmataPro Liga', 'PragmataPro', 'MonoLisa',
    'Hack', 'Inconsolata',
  }),
  font_size = 16,
  line_height = 0.95,
  enable_tab_bar = true,
  hide_tab_bar_if_only_one_tab = true,
  use_fancy_tab_bar = false,
  tab_max_width = 36,
  window_decorations = 'RESIZE',

  colors = colorscheme,
}
