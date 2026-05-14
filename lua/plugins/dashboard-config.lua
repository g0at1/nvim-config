return {
  theme = "doom",

  config = {
    header = {
      "",
      "███╗   ██╗██╗   ██╗██╗███╗   ███╗",
      "████╗  ██║██║   ██║██║████╗ ████║",
      "██╔██╗ ██║██║   ██║██║██╔████╔██║",
      "██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
      "██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
      "╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
      "",
    },

    center = {
      {
        icon = "  ",
        desc = "New File",
        key = "n",
        action = "ene | startinsert",
      },

      {
        icon = "  ",
        desc = "Find File",
        key = "f",
        action = "Telescope find_files",
      },

      {
        icon = "󰱼  ",
        desc = "Find Word",
        key = "g",
        action = "Telescope live_grep",
      },

      {
        icon = "  ",
        desc = "Recent Files",
        key = "r",
        action = "Telescope oldfiles",
      },

      {
        icon = "  ",
        desc = "File Explorer",
        key = "e",
        action = "NvimTreeToggle",
      },

      {
        icon = "  ",
        desc = "Quit",
        key = "q",
        action = "qa",
      },
    },

    footer = {
      "",
      "⚡ Neovim loaded with lazy.nvim",
    },
  },
}
