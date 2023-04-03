-- Copyright (c) 2020-2021 Mofiqul Islam
-- MIT license, see LICENSE for more details.
local vscode = {}
local colors = {}

if vim.o.background == 'dark' then
      colors.inactive = '#666666'
    colors.bg = '#000000'
    colors.bg2 = '#000000'
    colors.fg = '#ababab'
    colors.red = '#f44747'
    colors.green = '#4a5944'
    colors.blue = '#3b729f'
    colors.lightblue = '#5CB6F8'
    colors.yellow = '#b5b57f'
    colors.pink = '#966492'
else
    colors.inactive = '#888888'
    colors.bg = '#F5F5F5'
    colors.bg2 = '#E4E4E4'
    colors.fg = '#343434'
    colors.red = '#FF0000'
    colors.green = '#008000'
    colors.blue = '#AF00DB'
    colors.lightblue = '#0451A5'
    colors.yellow = '#ffaf00'
    colors.pink = '#FFA3A3'
end

vscode.normal = {
      a = { fg = colors.blue, bg = colors.bg, gui = 'bold' },
      b = { fg = colors.blue, bg = colors.bg2 },
      c = { fg = colors.fg, bg = colors.bg },
}

vscode.visual = {
      a = { fg = colors.yellow, bg = colors.bg, gui = 'bold' },
      b = { fg = colors.yellow, bg = colors.bg2 },
}

vscode.inactive = {
      a = { fg = colors.fg, bg = colors.bg, gui = 'bold' },
      b = { fg = colors.inactive, bg = colors.bg },
      c = { fg = colors.inactive, bg = colors.bg },
}

vscode.replace = {
      a = { fg = colors.red, bg = colors.bg, gui = 'bold' },
      b = { fg = colors.red, bg = colors.bg2 },
      c = { fg = colors.fg, bg = colors.bg },
}

vscode.insert = {
      a = { fg = colors.green, bg = colors.bg, gui = 'bold' },
      b = { fg = colors.green, bg = colors.bg2 },
      c = { fg = colors.fg, bg = colors.bg },
}

vscode.terminal = {
      a = { fg = colors.fg, bg = colors.bg2, gui='bold' },
      b = { fg = colors.fg, bg = colors.bg2 },
      c = { fg = colors.fg, bg = colors.bg },
}

vscode.command = {
      a = { fg = colors.pink, bg = colors.bg2, gui = 'bold' },
      b = { fg = colors.pink, bg = colors.bg2 },
      c = { fg = colors.fg, bg = colors.bg },
}

return vscode
