### Consists of mostly the configs and shell scripts for miscellaneous tasks
## Such as:
> AdGUard service script 
> A script to run fastfetch on startup screen from random logos I liked.

### These are from my tablet, made with the purpose to not become a hurdle when doing a reset in future.
Since I did not root the tablet, I had to find a work around to run AdGuard with only the permissions of an unprevillaged user.
Thus I did some sniffing around and come to know that I could run it with the configuratoin file with some changes to it, such as
changing the default port of the dns server, by default it'd try to use port 53 which is not possible on a unrooted android device.
Thus with the help of ChatGpt I made a config file that could be used to change the default ports, 
another problem encountered was the web ui, it again tried to bind to a port I could not use, so changed it to 8443.

Then I ran it using the command 
` ./AdGuardHome -c AdGuardHome.yaml ` 
I was happy that it worked, but not for long, 
after sometime I encountered errors I didn't understand at all, that's when ChatGpt helped again, I rigorouly typed out the erorr codes I recieved into it.
It said it had to do something with tls certificates, then to troubleshooting once again, downloaded some certificates files from somewhere I don't remember.
They didn't work, once again I asked why it doesn't work. It's seemed that the url was either faulty or the certificates were no longer there, 
after that in the end it worked with the certificates downloaded from Mozilla.

- .bashrc SSL variable needs to be there,
- .pem file needs to be there(` curl -o $PREFIX/etc/tls/cacert.pem https://curl.se/ca/cacert.pem `),
- file needs to have permission 644 atleast
- for some reason specified path didn't work in tls section
-- it seems that file needs to be specified in tls settings while directory needs to be in environment variables
-- bacause when I ran it without the exact file path in tls it showed a very small unnoticable error in console while variable one leads to tls exchange failures.

used 
`echo | openssl s_client -servername adguardteam.github.io -connect adguardteam.github.io:443 2>/dev/null | openssl x509 -outform PEM > agh.crt`
to download adguard certs.
` add-trusted-certificate agh.crt ` 
to add this into trusted certs

other updates coming up...
