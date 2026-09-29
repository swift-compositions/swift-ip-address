import IP_Address
import Testing

@Suite
struct `IP Address` {

    @Test
    func `IP Address names IPv4 and IPv6 addresses through one import`() {
        let v4 = IPv4.Address(rawValue: 0x7F00_0001)
        let v6 = IPv6.Address(0, 0, 0, 0, 0, 0, 0, 1)

        #expect(v4 == IPv4.Address.loopback)
        #expect(v6.is.loopback)
    }

    @Test
    func `Address preserves canonical payloads and provider order`() {
        let v6 = IPv6.Address(0, 0, 0, 0, 0, 0, 0, 1)
        let v4 = IPv4.Address(rawValue: 0x7F00_0001)
        let addresses: [IP.Address] = [.v6(v6), .v4(v4)]

        #expect(addresses == [.v6(v6), .v4(v4)])
    }
}
