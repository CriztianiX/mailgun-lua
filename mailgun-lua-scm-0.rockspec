package = "mailgun-lua"
version = "scm-0"

source = {
    url = "git://github.com/CriztianiX/mailgun-lua.git"
}

description = {
    summary = "Mailgun's UN-official SDK for lua",
    homepage = "http://github.com/CriztianiX/mailgun-lua",
    maintainer = "Criztian Haunsen <cristianhaunsen@gmail.com>",
    license = "MIT"
}

dependencies = {
    "lua ~> 5.1",
    "lua-spore"
}

build = {
    type = "builtin",
    modules = {
        ["mailgun"] = "mailgun.lua",
        ["mailgun.init"] = "mailgun/init.lua",
        ["mailgun.spec"] = "mailgun/spec.lua",
    }
}