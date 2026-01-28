# Zim websites
This is a simple script to zim a wiki website
If you want to archive an online wiki website you can make a zim from it, then open it with a zim viewer like kiwix.

## Usage:
You should have `docker` installed
Also the script will try to download `zimit` image, so you should have internet access

Run with

```
  chmod +x ./zim.sh # Only for the first time
  ./zim.sh URL Name Desc Proxyport(opt) ProxyURL(opt)
```
For e.g.
```
  ./zim.sh "https://pkg.go.dev/github.com/redis/go-redis/v9" "go-redis" "Full go-redis Docs" 8008 172.17.0.1
```
> Note: if you run proxy on you local host, Just enter the Proxyport
