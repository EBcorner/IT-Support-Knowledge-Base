# Windows Device Has No Internet

## Initial Questions

- Is the issue affecting one device or several?
- Is the device using Wi-Fi or Ethernet?
- Can the user see the correct network?
- Did the issue begin after a restart, update, or location change?

## Troubleshooting Checklist

1. Check airplane mode and Wi-Fi status.
2. Confirm the device is connected to the expected network.
3. Test another website or application.
4. Run `ipconfig /all`.
5. Check whether the device has a valid IP address.
6. If the address begins with `169.254`, investigate DHCP connectivity.
7. Ping the default gateway.
8. Ping a public IP address.
9. Test DNS resolution using `nslookup`.
10. Disable and re-enable the network adapter.
11. Restart the device if appropriate.
12. Escalate with clear evidence if the issue continues.

## Useful Commands

```powershell
ipconfig /all
ipconfig /release
ipconfig /renew
ipconfig /flushdns
ping 8.8.8.8
nslookup microsoft.com
```

## Key Lesson

Troubleshoot from the physical connection upward: adapter, IP addressing, gateway, internet access, and DNS.
