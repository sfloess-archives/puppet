class variables {

    # ----------------------------------------------------

    $common_externalDomain = 'flossware.homelinux.org'
    $common_masterHost      = 'adminserver'
    $common_masterIp        = "${baseIp}.253"
    $common_masterFqdn      = "${adminHost}.${internalDomain}"
    $common_masterayIp      = "${baseIp}.1"

    # ----------------------------------------------------

    $postfix_externalRelayHost = "smtp-server.nc.rr.com"
    $postfix_internalRelayHost = "${adminHost}"

    # ----------------------------------------------------

    $dns_hosts = [
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
