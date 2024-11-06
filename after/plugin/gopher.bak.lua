require("gopher").setup {
  commands = {
    go = "go",
    gomodifytags = "/Users/danyelaristizabal/go/bin/gomodifytags",
    gotests = "/Users/danyelaristizabal/go/bin/gotests", -- also you can set custom command path
    impl = "impl",
    iferr = "iferr",
  },
  gotests = {
    -- gotests doesn't have template named "default" so this plugin uses "default" to set the default template
    template = "default",
    -- path to a directory containing custom test code templates
    template_dir = nil,
    -- switch table tests from using slice to map (with test name for the key)
    -- works only with gotests installed from develop branch
    named = false,
  },
  gotag = {
    transform = "snakecase",
  },
}
