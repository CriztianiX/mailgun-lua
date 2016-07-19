local spec = require("mailgun.spec")

local new = function(username, password)
    if not username then
        error("Please specify an username.")
    end
    if not password then
        error("Please specify a password.")
    end

    local client = require 'Spore'.new_from_lua(spec, {
        authentication = true
    })

    client:enable 'Format.JSON'
    client:enable('Auth.Basic', {username = username, password = password})

    return client
end

return {
    new = new
}
