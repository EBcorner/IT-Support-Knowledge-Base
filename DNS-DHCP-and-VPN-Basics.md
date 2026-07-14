# DNS, DHCP, and VPN Basics

## DNS

DNS translates domain names into IP addresses.

Example:
`microsoft.com` → an IP address

Common DNS symptoms:
- Websites fail by name but work by IP address
- Some services cannot be located
- `nslookup` returns an error

## DHCP

DHCP automatically provides devices with:
- IP address
- Subnet mask
- Default gateway
- DNS server

An address beginning with `169.254` usually indicates the device could not obtain a lease from DHCP.

## VPN

A VPN creates an encrypted connection between a remote device and an organisation's network or cloud services.

Common VPN checks:
- Internet works before connecting
- Correct credentials and MFA
- Correct VPN profile
- DNS after connection
- Conflicting local network range
- Full-tunnel or split-tunnel behaviour

## Key Lesson

Understanding DNS, DHCP, and VPN helps separate name resolution, addressing, and secure remote-access problems.
