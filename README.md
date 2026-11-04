# swift-ip-address

Use this package when a value can be either an IPv4 or an IPv6 address, such as a resolver's answers or a list of hosts to connect to. Start from `IP.Address`. It also re-exports `IPv4.Address` and `IPv6.Address`, so one import names both families. If you only ever handle one family, depend on swift-ipv4-standard or swift-ipv6-standard instead. To connect or bind a socket with these values, use swift-sockets-ip-address.
