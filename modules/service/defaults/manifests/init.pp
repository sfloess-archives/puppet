class defaults {
    $baseNetmask       = '255.255.255'
    $netmask           = "${baseNetmask}.0"
    $baseIp            = '192.168.168'
    $reverseBaseIp     = '168.168.192'
    $subnet            = "${baseIp}.0"
    $broadcastAddress  = "${baseIp}.255"
    $internalDomain    = 'flossware.com'
    $externalDomain    = 'flossware.homelinux.org'
    $adminHost         = 'adminserver'
    $adminIp           = "${baseIp}.253"
    $adminFqdn         = "${adminHost}.${internalDomain}"
    $gatewayIp         = "${baseIp}.1"

    $externalRelayHost = "smtp-server.nc.rr.com"
    $internalRelayHost = "${adminHost}"

    // ----------------------------------------------------

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
}
