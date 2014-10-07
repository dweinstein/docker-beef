Browser Exploitation Framework
======================

WebUI at https://127.0.0.1/panel

Login - beef/beef

From Docker Index
```
docker pull usertaken/beef
```

Build Yourself
```
docker build --rm -t usertaken/beef github.com/UserTaken/docker-beef
```

Run
```
docker run -it -p 443:443 -p 2000:2000 -p 6789:6789 usertaken/beef
```
