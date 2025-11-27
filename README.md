### Consists of mostly the configs and shell scripts for miscellaneous tasks
## Such as:
- ~~AdGuard service script~~
- A script to run fastfetch on startup screen with logos I liked

Requirements: Termux, Termux:API, Termux:Styling, storage permissions, for now.

### These are from my tablet, made with the purpose to not become a hurdle when doing a reset in future.
~~A million years later...~~
`sv services` need a folder named after what we'd use to call them, like adguard, folder name is the same as the name we'd use to run the sv command on.
they are stored in: `$PREFIX/var/services`
they need an extensionless shell script name run to create the custom service, i.e `services/service-name/run`
other updates coming up...
<br>
P.S: I get to root it in the end, it was very figuring out how to root it, especially since everywhere I went they missed out one important thing for beginners, that was how to actually get it to show up in fastboot devices.
So much for noobs learning curve, and I got it almost bricked in the end as well lol.
