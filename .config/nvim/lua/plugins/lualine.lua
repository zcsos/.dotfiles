require('lualine').setup({
  options = {
    theme = 'catppuccin',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
  },

  sections = {
    lualine_a = {
                  {
                  'mode',
                     icons_enabled = true, -- Enables the display of icons alongside the component.
                     icon = nil,
                     separator = nil,      -- Determines what separator to use for the component.
                     cond = nil,           -- Condition function, the component is loaded when the function returns `true`.
                     draw_empty = false,   -- Whether to draw component even if it's empty.
                     color = nil, -- The default is your theme's color for that section and mode.
                     type = nil,
                     padding = 1, -- Adds padding to the left and right of components.
                     fmt = nil,   -- Format function, formats the component's output.
                     on_click = nil, -- takes a function that is called when component is clicked with mouse.
                  },
                },
    lualine_b = {
                  {
                  'filename',
                     file_status = true,      -- Displays file status (readonly status, modified status)
                     newfile_status = false,  -- Display new file status (new file means no write after created)
                     icon = '󰉋',
                     path = 4,                -- 0: Just the filename
                     shorting_target = 40,    -- Shortens path to leave 40 spaces in the window
                     symbols = {
                     modified = '[+]',      -- Text to show when the file is modified.
                     readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
                     unnamed = '[No Name]', -- Text to show for unnamed buffers.
                     newfile = '[New]',
                     }
                  },
                  {
                  'filetype',
                     colored = true,   -- Displays filetype icon in color if set to true
                     icon_only = true, -- Display only an icon for filetype
                     icon = { align = 'left' },
                  }
                },
    lualine_c = {
                  'branch',
                  {
                  'diff',
                  colored = true, -- Displays a colored diff status if set to true
                  symbols = {added = ' ', modified = ' ', removed = ' '}, -- Changes the symbols used by the diff.
                  source = nil, -- A function that works as a data source for diff.
                    -- It must return a table as such:
                    --   { added = add_count, modified = modified_count, removed = removed_count }
                    -- or nil on failure. count <= 0 won't be displayed.
                  }
                },
    lualine_x = {
                  {
                  'diagnostics',
                  sources = {'nvim_diagnostic', 'coc' },
                  sections = { 'error', 'warn', 'info', 'hint' },
                  diagnostics_color = {
                    error = 'DiagnosticError', -- Changes diagnostics' error color.
                    warn  = 'DiagnosticWarn',  -- Changes diagnostics' warn color.
                    info  = 'DiagnosticInfo',  -- Changes diagnostics' info color.
                    hint  = 'DiagnosticHint',  -- Changes diagnostics' hint color.
                  },
                  symbols = {error = ' ', warn = ' ', info = '󰋼 ', hint = '󰛩 '},
                  colored = true,
                  update_in_insert = false,
                  always_visible = false,
                  },
                  'encoding',
              --  'fileformat'
                },
    lualine_y = {'selectioncount', 'searchcount', 'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {
                  {
                  'filename',
                     file_status = true,      -- Displays file status (readonly status, modified status)
                     newfile_status = false,  -- Display new file status (new file means no write after created)
               --    icon = '󰉋',
                     path = 4,
                     shorting_target = 40,    -- Shortens path to leave 40 spaces in the window
                     symbols = {
                     modified = '[+]',      -- Text to show when the file is modified.
                     readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
                     unnamed = '[No Name]', -- Text to show for unnamed buffers.
                     newfile = '[New]',
                     }
                  }
                },
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
})

