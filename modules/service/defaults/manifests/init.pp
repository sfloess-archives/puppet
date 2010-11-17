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
}
