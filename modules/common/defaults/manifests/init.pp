class defaults {

    # ----------------------------------------------------

    $service_defaultExternalDomain = 'flossware.homelinux.org'
    $service_defaultAdminHost      = 'adminserver'
    $service_defaultAdminIp        = "${baseIp}.253"
    $service_defaultAdminFqdn      = "${adminHost}.${internalDomain}"
    $service_defaultGatewayIp      = "${baseIp}.1"

    # ----------------------------------------------------

    $postfix_defaultExternalRelayHost = "smtp-server.nc.rr.com"
    $postfix_defaultInternalRelayHost = "${adminHost}"

    # ----------------------------------------------------

    $dns_defaultHosts = [
        {
            subIp => "1",
            name  => "gateway",
        },
        {
            subIp => "2",
            name  => "amy",
        },
        {
            subIp => "3"
            name  => "hale",
        },
        {
            subIp => "4",
            name  => "playstation",
        },
        {
            subIp => "5",
            name  => "itouch",
        },
        {
            subIp => "6",
            name  => "psp",
        },
        {
            subIp => "7",
            name  => "flossy",
        },
        {
            subIp => "253",
            name  => "adminserver",
            cname => [
                "fileserver",
                "fontserver",
                "mailserver",
                "puppet",
                "webserver",
                "www"
            ]
        },
        {
            subIp => "254",
            name  => "accesspoint",
        },
    ]

    # ----------------------------------------------------

    pulse_defaultSampleChannels = "6"
}
