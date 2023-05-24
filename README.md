# VNC Windows Delphi App Container

## Synopsis

Lightweight desktop Container designed for speed, and flexibility.

## Running Locally

### Requirements
- Docker

### Building Container Image
```
docker build -t brpedromaia_wine_delphi:latest . -f ContainerFile
```

### Running Container

```
docker run --rm -it --name on4b_wine \
     -v << applications folder >>:/wine/  \
     -p 5900:5900 \
     brpedromaia_wine_delphi:latest \
     winerun "C:/Application/app.exe"
```

ps1: winerun script is getting the "C:/application/app.exe" from the  /wine/application/app.exe.
ps2: it's required created the application volume on /wine/

