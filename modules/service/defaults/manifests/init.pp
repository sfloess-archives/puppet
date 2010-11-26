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

    $host_gateway = {
        subIp => "1",
        name  => "gateway",
    }

    $host_amy = {
        subIp => "2",
        name  => "amy",
    }

    $host_hale = {
        subIp => "3"
        name  => "hale",
    }

    $host_playstation = {
        subIp => "4",
        name  => "playstation",
    }

    $host_itouch = {
        subIp => "5",
        name  => "itouch",
    }

    $host_psp = {
        subIp => "6",
        name  => "psp",
    }

    $host_flossy = {
        subIp => "7",
        name  => "flossy",
    }

    $host_adminserver = {
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
    }

    $host_accesspoint = {
        subIp => "254",
        name  => "accesspoint",
    }

    $dns_defaultHosts = [
        $host_gateway,
        $host_amy,
        $host_hale,
        $host_playstation,
        $host_itouch,
        $host_psp,
        $host_flossy,
        $host_adminserver,
        $host_accesspoint,
    ]
}
