
dig TXT dk._domainkey.fbk.info

#; <<>> DiG 9.20.5-1-Debian <<>> TXT dk._domainkey.fbk.info
#;; global options: +cmd
#;; Got answer:
#;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 2887
#;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1
#
#;; OPT PSEUDOSECTION:
#; EDNS: version: 0, flags:; udp: 1232
#;; QUESTION SECTION:
#;dk._domainkey.fbk.info.		IN	TXT
#
#;; ANSWER SECTION:
#dk._domainkey.fbk.info.	30	IN	TXT	"v=DKIM1;p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDhkOo8s6fh9Byz1uy69tfQ6eUnzi/5P22EWccwI1PdmCpiyNwZcq3vOS2MHbVYB+ZY6wbBlAFym8EHbZY9OTlJ3+dzt8qTUNW5olkNVl4ecDv3XO2ML8q5sxQL+dwQU6UAQiDAAC/ZRWwiXHrSsr90pqH1Q0vhB7Kp6DHrWYJquQIDAQAB"
#
#;; Query time: 147 msec
#;; SERVER: 10.254.254.254#53(10.254.254.254) (UDP)
#;; WHEN: Sat Mar 01 17:55:06 +07 2025
#;; MSG SIZE  rcvd: 290


dig TXT smtp._domainkey.fbk.info

#; <<>> DiG 9.20.5-1-Debian <<>> TXT smtp._domainkey.fbk.info
#;; global options: +cmd
#;; Got answer:
#;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 16992
#;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1
#
#;; OPT PSEUDOSECTION:
#; EDNS: version: 0, flags:; udp: 1232
#;; QUESTION SECTION:
#;smtp._domainkey.fbk.info.      IN      TXT
#
#;; ANSWER SECTION:
#smtp._domainkey.fbk.info. 228   IN      TXT     "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCpVPl/CNYTn+ay5rv7x4K3L0o02piyM42pVWKec6pP8xKSEh9nDnbBTKGQwUwbjjAGs33oaU1SStea89Z4QwhbCHunawqDp9juqOEbHjWxTX2uzcxazOOmgZMo/GmFNDOKxWbLqPkJSY9xtwfgSD4l1Gfs2w7yFeeEuzhMOLZ9YwIDAQAB"
#
#;; Query time: 127 msec
#;; SERVER: 10.254.254.254#53(10.254.254.254) (UDP)
#;; WHEN: Mon Mar 03 20:55:16 +07 2025
#;; MSG SIZE  rcvd: 291


dig +short txt 20210112._domainkey.google.com
#"v=DKIM1; k=rsa; p="


# https://www.nslookup.io/learning/dkim-a-practical-guide/
#dig +short txt 20210112._domainkey.google.com
#"v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtnbQAeqvEP2pG2L540W9JvVU7qy767Zs83Hjw34PCkZ9/9dWE6cK+CYaMNIQqTGfwq4uUe3diBuz3Uikkr+WPMj9AuxtxJqUAO8PsZ2Y5DneFpz5kVesC9/rtXgCwgYOmO" "9UjSy4IN11ewXUBuCH+zp2v5Abv5T0Lol/nWl8wLgRI1IesstingY4cnSfo3Pq3U0I1GAxdNFCK2FPedPpg4sdPpHqtxVvRLMLamRKoUfySBMjpXuMNL0UeCizmFfdUL73ZdiS+MNxGECzFNmeCngFBscLQN++urvfB9OqHQrbxLIwNyni3KMbE/E+cxPkx4KxhyGHSU2klV1vvIAHfwIDAQAB"


# https://lessonsec.com/posts/email-spoofing-101/
#dig 20210112._domainkey.google.com txt

#; <<>> DiG 9.16.8-Ubuntu <<>> 20210112._domainkey.google.com txt
#;; global options: +cmd
#;; Got answer:
#;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 52118
#;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1
#
#;; OPT PSEUDOSECTION:
#; EDNS: version: 0, flags:; udp: 65494
#;; QUESTION SECTION:
#;20210112._domainkey.google.com.	IN	TXT
#
#;; ANSWER SECTION:
#20210112._domainkey.google.com.	3600 IN	TXT	"v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtnbQAeqvEP2pG2L540W9JvVU7qy767Zs83Hjw34PCkZ9/9dWE6cK+CYaMNIQqTGfwq4uUe3diBuz3Uikkr+WPMj9AuxtxJqUAO8PsZ2Y5DneFpz5kVesC9/rtXgCwgYOmO" "9UjSy4IN11ewXUBuCH+zp2v5Abv5T0Lol/nWl8wLgRI1IesstingY4cnSfo3Pq3U0I1GAxdNFCK2FPedPpg4sdPpHqtxVvRLMLamRKoUfySBMjpXuMNL0UeCizmFfdUL73ZdiS+MNxGECzFNmeCngFBscLQN++urvfB9OqHQrbxLIwNyni3KMbE/E+cxPkx4KxhyGHSU2klV1vvIAHfwIDAQAB"
#
#;; Query time: 92 msec
#;; SERVER: 127.0.0.53#53(127.0.0.53)
#;; WHEN: Tue Nov 23 22:23:32 CET 2021
#;; MSG SIZE  rcvd: 483
