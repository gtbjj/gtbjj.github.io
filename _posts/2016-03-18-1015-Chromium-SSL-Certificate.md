---
layout: post
title: Chromium Certificate Error
excerpt: "Solutions to Chromium complaints about 'connection not private'"
category:
- Troubleshooting
- Linux
tags:
- arch
- linux
- chromium
- certificate
- error
- ssl
comments: true
---

### [Fix] Chromium - Connection Not Private:

There are several solutions out there for when Chromium complains about 
*connection not private*.  Commonly, you can click *advanced* and then 
*proceed anyway*.  However, sometimes there's a problem with your SSL 
security certificates.  I'll briefly cover some solutions here.

### Date and Time:

Simply check your system's date and time ala 

```$ date```  

specifically, check the year and, if needed correct with

```$ timedatectl set-time YYYY-MM-DD```

This is probably the most common response if you were to Google "chromium 
connection not private" or the error code 
```NET:ERR_CERT_COMMON_NAME_INVALID``` / 
```NET:ERR_CERT_AUTHORITY_INVALID```.

While this has worked for me in the past, this was to no avail with my 
current case.  In fact, there was not even a *proceed anyway* option.  So, 
let's continue...

# Manually Update Certificate:

1. Click on the certificate warning, it should pop up a lot of information 
about the certificate.
2. Highlight the certificate from where it states ```---BEGIN 
CERFICATE---``` through the end.  Then, copy it to your clipboard.
3. Paste that to a file such as *~/chromium.crt*
4. ```$ certutil -d sql:$HOME/.pki/nssdb -A -t P -n chromium_cert -i 
~/chromium.crt```

5. Restart chromium

This *did* work for me.  See [original solution source on 
superuser.com](http://superuser.com/questions/104146/add-permanent-ssl-certificate-exception-in-chrome-linux).

### Adding Self-Signed Certificates:

In a similar vein I decided to go ahead and proceed with this as well.  
Afer the above fix, Google app sites and a few others worked fine, but I 
was still getting the *connection not private* error fairly frequently.  
The procedure for this is clearly laid out in the relevant section of the 
Arch Wiki dealing with [Chromiun Tips / Tricks #SSL 
certificates](https://wiki.archlinux.org/index.php/Chromium/Tips_and_tricks#SSL_certificates).
