return    {
        base_url = 'https://api.mailgun.net/v3/',
        methods = {
            domains = {
                path = '/domains',
                method = 'GET',
            },
            send_message = {
                path = '/:domain/messages',
                method = 'POST',
                ["form-data"] = {
                    ":domainm", "from", "html", "text", "to",
                },
                required_params = {
                    "domain", "from", "to"
                },
                optional_params = {
                    "html", "text"
                }
            },
        },
    }