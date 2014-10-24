Browser Exploitation Framework
======================

WebUI at https://127.0.0.1/panel

Login - beef/beef

From Docker Index
```
docker pull dweinstein/beef
```

Build Yourself
```
docker build -t dweinstein/beef .
```

Run
```
docker run --rm -i -t -p 3000:3000 -p 6789:6789 dweinstein/beef
```
